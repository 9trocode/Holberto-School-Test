class AdminController < ApplicationController
  before_action :set_admin, only: %i[show]


  # GET /admin
  def index; end
end
