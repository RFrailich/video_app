class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  
  def after_sign_in_path(resource)
    videos_path
  end

end
