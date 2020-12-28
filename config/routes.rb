Rails.application.routes.draw do
  devise_for :alumnis
  devise_for :entrepreneurs

  root to: 'pages#home'
end
