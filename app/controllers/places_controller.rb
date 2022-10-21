class PlacesController < ApplicationController
  def index
    @places = Place.all

  end

  def show
  end
  
  def new
    @place = Place.new  
  end

  def create
    @place = Place.new(place_params)


  end


  def edit
  end

  def destroy
  end

  private

    def place_params
      params.require(:place).permit(:name, :description, :city_id, :user_id, :number_rooms, :number_bathrooms, :max_guest, :price_per_night, :latitude, :longitude)
    end
end
