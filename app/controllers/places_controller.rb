class PlacesController < ApplicationController
  def index
    @places = Place.all
    respond_to do |format|
      format.html {render json: @places}
    end
  end

  def show
    @place = Place.find(params[:id])
    respond_to do |format|
      format.html { render json: @place }
    end
  end
end
