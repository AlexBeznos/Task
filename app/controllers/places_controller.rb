class PlacesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_place , only: [:show,:update]

  def index
    @places = Place.all
    respond_to do |format|
      format.html {render json: place_to_json(@places) } #I can override to_json method , but I this it`s a bad practice
    end
  end

  def show
    respond_to do |format|
      format.html { render json: place_to_json(@place) }
    end
  end

  def update
    @place.update(place_params)
  end

  private

  def place_params
    params.permit(:name,:address,:owner)
  end

  def place_to_json(place)
    place.to_json(:only => ["name","address","owner"])
  end

  def set_place
    @place = Place.find(params[:id])
  end
end
