class PlacesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_place , only: [:show,:update]

  def index
    @places = Place.all
    respond_to do |format|
      format.html {render json: @places}
    end
  end

  def show
    respond_to do |format|
      format.html { render json: @place }
    end
  end

  def update
    @place.update(name: [params[:name]] ,
                  address: [params[:address]] ,
                  owner: [params[:name]]) 
  end

  def set_place
    @place = Place.find(params[:id])
  end

end
