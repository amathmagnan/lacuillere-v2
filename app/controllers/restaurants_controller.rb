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
  end

#pour créer
  def create
  end

#pour un formulaire d'édition
  def edit
  end

#pour intercepter la requete
  def update
  end

#pour supprimer
  def destroy
  end

end
