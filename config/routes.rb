Syndrome::Engine.routes.draw do
  get 'health_check/ok'
  get 'health_check/status'
end
