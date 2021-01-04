Rails.application.routes.draw do
  devise_for :alumnis
  devise_for :entrepreneurs

  resources :alumnis, only: [:index, :show, :update, :edit] do
    collection do
      get 'dashboard', to: 'alumnis#dashboard'
    end
  end

  resources :entrepreneurs, only: [:index, :show, :update, :edit] do
    collection do
      get 'dashboard', to: 'entrepreneurs#dashboard'
    end
  end

  root to: 'pages#home'

  resources :projects, except: :destroy do
    resources :tasks
    resources :roles do
      resources :candidacies
    end
  end

  resources :articles
end
