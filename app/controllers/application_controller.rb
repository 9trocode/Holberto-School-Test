# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :verify_login

  def verify_login
    redirect_to login_path unless logged_in?
  end
  layout :set_layout

  def set_layout
    if current_user
      'dashboard'
    else
      'application'
    end
  end

  def render_404
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found }
      format.xml  { head :not_found }
      format.any  { head :not_found }
    end
  end
end
