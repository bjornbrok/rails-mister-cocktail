Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create]
  #root 'cocktails#index'
end

# Rails.application.routes.draw do
#   resources :spaceships
#   root 'spaceships#index'
# end
