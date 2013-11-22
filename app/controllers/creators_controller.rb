class CreatorsController < ApplicationController
  
  respond_to :json
  
  def index

    @creators = params[:id] ? Creator.where('id in (?)', params[:id].split(","))  : Creator.all
    #@looks = params[:id] ? @creator.looks_as_creator.find(params[:id].split(","))  : @creator.looks_as_creator
		#render json: @users
	end

	def create
	end

	def update
	end

	def destroy
	end

end
