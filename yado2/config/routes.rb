Rails.application.routes.draw do
    resources :hotels
    root'hotels#index'
    get 'get_image/:id', to: 'hotels#get_image'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
