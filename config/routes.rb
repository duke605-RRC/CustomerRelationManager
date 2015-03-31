Rails.application.routes.draw do
  resources :provinces
  resources :customers

  get '/' => 'finder#index', as: 'finder'
  get '/alphabetized' => 'finder#alphabetized'
  get '/missing_email' => 'finder#missing_email'
end
