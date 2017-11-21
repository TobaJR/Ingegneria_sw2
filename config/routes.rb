Rails.application.routes.draw do
  root 'pages#home'
  get "/clients/all_works" => "pages#all_works"
  resources :clients do
    resources :works do
        member do
        post 'pay'
      end
    end
end
end
