class UsersController < ApplicationController
	 skip_before_action :verify_authenticity_token 
	
	def upload_profile
		current_user.update_attributes(:avatar=>params[:avatar])
		redirect_to '/'
	end

end
