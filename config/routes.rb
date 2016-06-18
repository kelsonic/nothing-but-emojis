Rails.application.routes.draw do
  root 'pages#home'
  post 'convert', to: 'pages#convert'
end

