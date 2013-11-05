class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :after_token_authentication

  def after_token_authentication
    if params[:authentication_key].present?
      @user = User.find_by_authentication_token(params[:authentication_key]) 
      sign_in @user if @user
      redirect_to root_path 
    end
  
  end

end
