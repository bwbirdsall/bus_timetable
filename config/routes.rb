Timetable::Application.routes.draw do
  resources :lines, :except => [:new, :edit, :update]
  resources :stations, :except => [:new, :edit, :update]
  resources :stops, :except => [:new, :edit, :update, :show]
end
