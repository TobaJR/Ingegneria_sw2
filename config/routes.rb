Rails.application.routes.draw do
<<<<<<< HEAD
  resources :clients 
      resources :invoices
=======
  root 'pages#home'
  resources :clients
  resources :invoices
>>>>>>> added bootstrap and css
end
