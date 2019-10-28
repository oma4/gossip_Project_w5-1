Rails.application.routes.draw do
  
  get 'static/homepage'
  get 'static/welcomexuser'
  get '/homepage' , to: 'static#homepage'
  get '/welcome' , to: 'static#welcome'
  get '/team' , to: 'static#team'
  get '/contact', to: 'static#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
