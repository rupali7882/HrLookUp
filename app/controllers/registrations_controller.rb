class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
  	super
      user_role = resource.build_role(:name=>params[:name])
      user_role.save
  end

  def update
    super
  end
end 
