# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  include Pundit::Authorization if defined?(Pundit)
  before_action :authenticate_user!, unless: :devise_controller?
  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError do
    redirect_to root_path, alert: 'You are not authorized to perform this action.'
  end
end
