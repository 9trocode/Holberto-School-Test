# frozen_string_literal: true

class LibraryLocationsController < ApplicationController
  before_action :set_library_location, only: %i[show edit update destroy]

  # GET /library_locations
  # GET /library_locations.json
  def index
    @library_location = LibraryLocation.order('name DESC')
  end

  # GET /library_locations/1
  # GET /library_locations/1.json
  def show; end

  # GET /library_locations/new
  def new
    @library_location = LibraryLocation.new
  end

  # GET /library_locations/1/edit
  def edit; end

  # POST /library_locations
  # POST /library_locations.json
  def create
    @library_location = LibraryLocation.new(library_location_params)

    respond_to do |format|
      if @library_location.save
        format.html { redirect_to library_locations_path, notice: 'Library location was successfully created.' }
        format.json { render :show, status: :created, location: @library_location }
      else
        format.html { render :new }
        format.json { render json: library_locations_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /library_locations/1
  # PATCH/PUT /library_locations/1.json
  def update
    respond_to do |format|
      if @library_location.update(library_location_params)
        format.html { redirect_to library_locations_path, notice: 'Library location was successfully updated.' }
        format.json { render :show, status: :ok, location: @library_location }
      else
        format.html { render :edit }
        format.json { render json: library_locations_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /library_locations/1
  # DELETE /library_locations/1.json
  def destroy
    @library_location.destroy
    respond_to do |format|
      format.html { redirect_to library_locations_url, notice: 'Library location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_library_location
    @library_location = LibraryLocation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def library_location_params
    params.require(:library_location).permit(:name, :city, :ref, :location_desc)
  end
end
