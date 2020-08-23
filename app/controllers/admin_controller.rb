class AdminController < ApplicationController
  before_action :set_admin, only: %i[show]


  # GET /admin
  def index;
    @books = Book.count
    @genre = Categories.count
    @user = User.count
    @locations = LibraryLocation.count
  end
end
