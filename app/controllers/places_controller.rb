class PlacesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_place , only: [:show,:update]

  def index
    @places = Place.all
    respond_to do |format|
      format.html {render json: @places} # TODO: i do not like to see information in output like id, created_at, updated_at
                                         # do smthng with it
    end
  end

  def show
    respond_to do |format|
      format.html { render json: @place }
    end
  end

  def update
    @place.update(place_params) 
  end

  def set_place
    @place = Place.find(params[:id])
  end
  
  private
  # TODO: read about strong parameters, and what for we need it
  def place_params
    params.permit(:name, :address).tap do |param|
      param[:owner] = param[:name] # it seems to me, you implement wrong logic
                                   # it seems user of api should send :owner_name instead of just name
                                   # but it up to you
    end
  end

end
