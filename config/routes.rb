Rails.application.routes.draw do
  #the baintodo_lists has many baintodo_items therefore baintodo belongs_to :list
  resources :baintodo_lists do
   resources :baintodo_items
  end
  
  root "baintodo_lists#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
