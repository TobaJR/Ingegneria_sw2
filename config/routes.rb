Rails.application.routes.draw do
  root 'pages#home'
  resources :clients do
    resources :works do
        resources :invoices
    end
  end

end
