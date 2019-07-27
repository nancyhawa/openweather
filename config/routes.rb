Rails.application.routes.draw do
  root 'weather_data_points#new'
  resources :weather_data_points, only: [:create, :show, :new]
end

