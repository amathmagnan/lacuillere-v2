class RestaurantsController < ApplicationController

#l'action index doit choper tous les restaurants
  def index
    @restaurants = Restaurant.all
  end

#on recupere l'id dans la show = GET /restaurant/id to (restaurant#show)
#on le recupere dans l'URL
#on recupere le restaurant et on l'envoi à la VIEW
  def show
    @restaurant = Restaurant.find(params[:id])
  end

#pour afficher le formulaire
  def new
    @restaurant = Restaurant.new
  end

#pour créer
  def create
    Restaurant.create(params[:restaurant])
    redirect_to restaurant_path
  end

#pour un formulaire d'édition
  def edit
    @restaurant = @Restaurant.find(params[:id])
  end

#pour intercepter la requete
def update
   @restaurant = @Restaurant.find(params[:id])
   @restaurant.update(restaurant_params)
   redirect_to restaurants_path
end

#pour supprimer
  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurant_path
  end

private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :stars)
  end

end
