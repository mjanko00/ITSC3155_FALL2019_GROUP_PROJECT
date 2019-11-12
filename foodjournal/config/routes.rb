Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :journals do
    resources :motivates
  end
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
