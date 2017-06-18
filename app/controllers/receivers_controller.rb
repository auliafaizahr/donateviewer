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
		
	end

	def update
		
	end

	def edit
		
	end

	def delete
		
	end

	def destroy
		
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
