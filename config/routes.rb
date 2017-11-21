Rails.application.routes.draw do
  root 'pages#home'
  resources :clients do
    resources :works do
        member do
        post 'pay'
      end
    end
  end

end
