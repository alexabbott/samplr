Samplr::Application.routes.draw do

 # here's the main page!
 root 'samples#index'   

 # default samplr rack
 get 'samples/' => 'samples#index', as: :samples

 # trap samplr rack
 get 'trap/' => 'samples#trap', as: :trap

 # house samplr rack
 get 'house/' => 'samples#house', as: :house

 # daft punk samplr rack
 get 'daftpunk/' => 'samples#daftpunk', as: :daftpunk

 # dubstep samplr rack
 get 'dubstep/' => 'samples#dubstep', as: :dubstep
 
 # rock samplr rack
 get 'rock/' => 'samples#rock', as: :rock
 
 # api endpoint
 get 'api/' => 'samples#api', as: :api

 # redirect all invalid urls to the root
 get '*path' => redirect('/')

 #new route added in
 get 'samples/' => 'samples#index', as: :sample

 post 'samples/' => 'samples#create', as: :samples_create
  
end
