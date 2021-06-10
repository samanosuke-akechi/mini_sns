class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    authorization
  end

  def google_oauth2
    authorization
  end

  private

  def authorization
    @user = User.from_omniauth(request.env["omniauth.auth"])
  end
end