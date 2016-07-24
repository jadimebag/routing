Rails.application.routes.draw do
  # get 'patients/show'
  #
  # get 'patients/new'
  #
  # get 'patients/create'

  resources :patients, only: [:show,:new,:create]
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
