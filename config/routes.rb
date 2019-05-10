Syndrome::Engine.routes.draw do
  get 'account' => 'account#show'
  get 'login' => 'login#get'

  get 'sessions/create'
  get 'sessions/destroy'
  get 'health_check/ok'
  get '/auth/:provider/callback', to: 'sessions#create'
end
