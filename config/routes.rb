Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


resources :restaurants

#inventer le routing CRUD
#Lire tous les restaurants
#get "restaurants" => "restaurants#index"

#Lire/afficher un restaurant
#get "restaurants/:id" => "restaurants#show"

#on peut faire une condition paramétrique
 # GET "restaurants/23"
 # params[:id]

#créer un restaurant (afficher le formulaire et on le valide (créer en base de données) = 2 étapes)
 # 2requêtes(afficher = get)
 # 1er étape afficher le formulaire
#get "restaurants/new" => "restaurants#new"

#2eme étape : soumet le formulaire > envoi de données = POST
#un GET et un POST sont des verbs différents
#create
#post "restaurants" => "restaurants#create"

#updater un restaurant (2 requêtes)
#edit afficher le formulaire pré rempli pour editer un restaurant
#get "restaurants/:id/edit" => "restaurants#edit"
#pour soumettre un formulaire on fait PATCH (pour modifier en base)
#patch "restaurants/:id" => "restaurants#update"

#supprimer
#verb HTTP = delete
#delete "restaurants/:id" => "restaurants#destroy"

end
