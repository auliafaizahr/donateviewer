class ReceiversController < ApplicationController

	before_action :set_receiver, only: [:show, :edit, :update, :destroy, :change]

	respond_to :html

	def index
	 @receivers = Receiver.all
	 @receivers = @receivers.search(params[:search]) if params[:search].present?
	 respond_with(@receivers)
	end

	def show
		
	end

	def new
		@receiver = Receiver.new
    	respond_with(@receiver)
	end

	def create
		@receiver = Receiver.new(receiver_params)

	    @receiver.save
	    respond_with(@receiver)
	end

	def change
		@receiver.update_attributes(state: params[:state])
    	respond_to do |format|
      	format.html {redirect_to receivers_path, notice: "Mustahik Updated"}
    end
	end

	def update
		respond_to do |format|
      if @receiver.update(receiver_params)
        format.html { redirect_to @receiver, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @receiver }
      else
        format.html { render :edit }
        format.json { render json: @receiver.errors, status: :unprocessable_entity }
      end
    end
	end

	def edit
		
	end

	def delete
		
	end

	def destroy
		@receiver.destroy
   	 respond_to do |format|
      format.html { redirect_to receivers_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
	end

	private

		def set_receiver
	    
	      @receiver = Receiver.find(params[:id])

	    end


    # Never trust parameters from the scary internet, only allow the white list through.
		   def receiver_params
		     params.require(:receiver).permit(:nama, :jenis_kelamin, :tanggal_lahir, :alamat, :status)
		   end


end
