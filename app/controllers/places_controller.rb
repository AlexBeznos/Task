class PlacesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_place , only: [:show,:update]

  def index
    @places = Place.all
  end

  def show
  end

  def update
    @place.update(place_params) # what will be outputed in case of unsuccessful update(for instance if validation fails). it should responce with errors(from my point of view, isn't it?)
  end

  private

  def place_params
    params.permit(:name,:address,:owner)
  end
  
  def set_place
    @place = Place.find(params[:id])
  end
end
