class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:name])
      session[:user_id] = @user_id
      redirect_to edit_user_path(@user)
    else
      redirect_to new_session_path
    end_time
    end
  end
end
