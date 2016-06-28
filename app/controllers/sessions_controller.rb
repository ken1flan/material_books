class SessionsController < ApplicationController
  def create
    @user = User.create_with_identity(auth_hash, session[:token])
    session[:user_id] = @user.id

    redirect_to root_path
  end

  def destroy
    redirect_to root_path
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
