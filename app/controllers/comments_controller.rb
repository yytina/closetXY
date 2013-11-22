class CommentsController < ApplicationController
  
  respond_to :json
  
  def index
  	@look = Look.find(params[:look_id]) if params[:look_id]
  	@comments = params[:id] ? Comment.where('id in (?)', params[:id].split(","))  : Comment.all


		#render json: @looks
	end

	def create
	end

	def update
	end

	def destroy
	end

end
