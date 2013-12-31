FoodSupply::Application.routes.draw do
  resources :track_food_supplies, only: [:index, :new, :create]
end
