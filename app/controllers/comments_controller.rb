class CommentsController < ApplicationController
  
  respond_to :json
  
  def index
  	@look = Look.find(params[:look_id]) if params[:look_id]
  	@comments = params[:id] ? Comment.where('id in (?)', params[:id].split(","))  : Comment.all


		#render json: @looks
	end

	def create
		 comment = Comment.new(comment_params)
		 comment.author = current_user
		 comment.look = Look.where('id = ?', params[:look_id]).take

		 head comment.save ? :created : :unprocessable_entity
	end

	def update
	end

	def destroy
	end

	protected
  def comment_params
    params.require( :comment ).permit( :body )
  end
end
