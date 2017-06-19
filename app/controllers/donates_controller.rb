class DonatesController < ApplicationController


before_action :set_donate, only: [:show, :edit, :update, :destroy, :change]

	respond_to :html

	def index
		
	end

	def update
		
	end

	def show
		
	end

	def edit
		
	end

	def home
		
	end

	def new
		@donate = Donate.new
    	respond_with(@donate)
		
	end

	def create
		
	end

	def change
		
	end

	def destroy
		
	end

	private

		def set_donate
	    
	      @donate = Donates.find(params[:id])

	    end


    # Never trust parameters from the scary internet, only allow the white list through.
		   def donate_params
		     params.require(:donate).permit(:donatur, :tgl_donasi, :dana, :barang, :besar_dana)
		   end


end
