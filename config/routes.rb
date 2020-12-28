Rails.application.routes.draw do
  devise_for :alumnis
  devise_for :entrepreneurs

  resources :alumnis do
    collection do
      get 'dashboard', to: 'alumnis#dashboard'
    end
  end

  resources :entrepreneurs do
    collection do
      get 'dashboard', to: 'entrepreneurs#dashboard'
    end
  end

  root to: 'pages#home'

  resources :projects do
    resources :tasks
    resources :roles do
      resources :candidacies
    end
  end

  resources :articles
end
