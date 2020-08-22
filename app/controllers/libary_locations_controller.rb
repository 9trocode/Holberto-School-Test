# frozen_string_literal: true

class LibaryLocationsController < ApplicationController
  before_action :set_libary_location, only: %i[show edit update destroy]

  # GET /libary_locations
  # GET /libary_locations.json
  def index
    @libary_locations = LibaryLocations.order('id DESC')
  end

  # GET /libary_locations/1
  # GET /libary_locations/1.json
  def show; end

  # GET /libary_locations/new
  def new
    @libary_location = LibaryLocations.new
  end

  # GET /libary_locations/1/edit
  def edit; end

  # POST /libary_locations
  # POST /libary_locations.json
  def create
    @libary_location = LibaryLocations.new(libary_location_params)

    respond_to do |format|
      if @libary_location.save
        format.html { redirect_to libary_locations_path, notice: 'Libary location was successfully created.' }
        format.json { render :show, status: :created, location: @libary_location }
      else
        format.html { render :new }
        format.json { render json: @libary_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /libary_locations/1
  # PATCH/PUT /libary_locations/1.json
  def update
    respond_to do |format|
      if @libary_location.update(libary_location_params)
        format.html { redirect_to libary_locations_path, notice: 'Libary location was successfully updated.' }
        format.json { render :show, status: :ok, location: @libary_location }
      else
        format.html { render :edit }
        format.json { render json: @libary_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libary_locations/1
  # DELETE /libary_locations/1.json
  def destroy
    @libary_location.destroy
    respond_to do |format|
      format.html { redirect_to libary_locations_path, notice: 'Libary location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_libary_location
    @libary_location = LibaryLocations.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def libary_location_params
    params.require(:libary_location).permit(:name, :city, :ref, :location_desc)
  end
end
