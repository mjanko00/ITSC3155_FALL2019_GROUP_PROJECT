Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :journals do
<<<<<<< HEAD
    resources :motivations
=======
    resources :motivates
>>>>>>> a14fb9908db0921090b2b3d31f6fb3c7cc006f9c
  end
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
