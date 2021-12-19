Rails.application.routes.draw do
    resources :tourists
    root 'top#main'
    post 'top/login'
    get 'top/login'
    get 'top/logout'
    get 'top/main'
    get 'get_tourist/:name', to: 'tourist#get_tourist'
    resources :hotels
    get 'get_image/:id', to: 'hotels#get_image'
    get 'search' => 'hotels#search'
    resources :reviews
    
    post 'hotels/create'
    root 'hotelsx#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
