class DonatorsController < ApplicationController
  
  before_action :set_donator, only: [:show, :edit, :update, :destroy, :change]

	respond_to :html


  def home
  end

  def new
  	@donator = Donator.new
    respond_with(@donator)
  end

  def edit
  end

  def delete
  	
  end

  def destroy
  	@donator.destroy
    respond_to do |format|
      format.html { redirect_to donators_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def create
  	@donator = Donator.new(donator_params)

    @donator.save
    respond_with(@donator)
  end

  def show
  	
  end

  def change
    @donator.update_attributes(state: params[:state])
    respond_to do |format|
      format.html {redirect_to donators_path, notice: "Donator Update"}
    end
  end

  def update
    respond_to do |format|
      if @donator.update(donator_params)
        format.html { redirect_to @donator, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @donator }
      else
        format.html { render :edit }
        format.json { render json: @donator.errors, status: :unprocessable_entity }
      end
    end
  end


  def index
  	@donators = Donator.all
   @donators = @donators.search(params[:search]) if params[:search].present?
   respond_with(@donators)
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_donator
      @donator = Donator.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def donator_params
      params.require(:donator).permit(:nama, :kontak, :jenis_kelamin, :alamat)
    end
  
end
