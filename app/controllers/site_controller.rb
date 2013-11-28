class SiteController < ApplicationController
  before_action :is_authenticated?, only: [ :index ]
  
  def index
    @users = User.all.entries
    
  end

  def me
  	data = {
  		id: current_user.id,
  		name: current_user.name
	  }

		render json: data
  end
  
  def privacy
    
  end
  
  def terms
    
  end
end