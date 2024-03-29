class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
    @user = User.find(@place.user_id) 
  end
  
  def new
    @place = Place.new  
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      flash[:success] = "Place created!"
      redirect_to @place
    else
      render 'new'
    end


  end


  def edit
  end

  def destroy
  end

  private

    def place_params
      params.require(:place).permit(:name, :cover_image, :description, :city_id, :user_id, :number_rooms, :number_bathrooms, :max_guest, :price_per_night, :latitude, :longitude)
    end
end
