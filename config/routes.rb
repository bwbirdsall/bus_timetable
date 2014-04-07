Timetable::Application.routes.draw do
  resources :lines, :except => [:new, :edit, :update]
  resources :stations, :except => [:new, :edit, :update]
  resources :buses, :except => [:new, :edit, :update]
  resources :busstops, :only => [:create, :destroy]
  resources :stops, :except => [:new, :edit, :update, :show]
end
