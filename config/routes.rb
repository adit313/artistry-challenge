Rails.application.routes.draw do
  
    resources :artists
    resources :instruments, only: [:index, :show]

    get '/artist/:id/add_instrument', to: 'artists#add_instrument', as: 'add_instrument'
    post :update_instruments, to:'artists#update_instruments', as: :update_instruments
end
