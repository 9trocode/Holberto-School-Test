# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :verify_login
  def login
    redirect_to books_path if current_user
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      log_in user
      redirect_to books_path
    else
      flash.now[:danger] = 'Invalid email id or password. Please try again.'
      render 'login'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end

  def register
    @user = User.new
    render 'register'
  end

  def new_user
    @user = User.new(user_params)
    # @user = User.new(user_params)
    begin
      if @user.save!
        session[:user_id] = @user.id
        logged_in?
        redirect_to books_path
      end
    rescue StandardError => e
      logger.debug 'ERROR - gaurav'
      flash.now[:danger] = e.message.to_s
      render 'register'
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :address, :phone, :is_admin, :is_deleted)
  end
end
