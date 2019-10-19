class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  layout :layout_by_controller

  protected

  def layout_by_controller
    devise_controller? ? 'devise' : 'application'
  end

end
