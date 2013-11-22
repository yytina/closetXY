class LooksController < ApplicationController
  
  respond_to :json
  
  def index
  	#@creator = User.find(params[:creator_id]) if params[:creator_id]
  	@looks = params[:id] ? Look.where('id in (?)', params[:id].split(","))  : Look.all


		#render json: @looks
	end

	def create
	end

	def update
	end

	def destroy
	end

end
