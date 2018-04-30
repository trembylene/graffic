class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  include Pundit

  after_action :verify_authorized, except: [:index, :search, :mine, :uploaded, :hearted], unless: :skip_pundit?
  after_action :verify_policy_scoped, only: [:index, :mine, :uploaded], unless: :skip_pundit?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:alias, :type])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:alias, :avatar, :info, :type])
  end

  before_action :store_user_location!, if: :storable_location?

  private
   # Its important that the location is NOT stored if:
   # - The request method is not GET (non idempotent)
   # - The request is handled by a Devise controller such as Devise::SessionsController as that could cause an
   #    infinite redirect loop.
   # - The request is an Ajax request as this can lead to very unexpected behaviour.
  def storable_location?
   request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
   # :user is the scope we are authenticating
   store_location_for(:user, request.fullpath)
  end

  def after_sign_out_path_for(resource_or_scope)
  stored_location_for(resource_or_scope) || super
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
