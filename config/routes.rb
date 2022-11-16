Rails.application.routes.draw do
  root "pagina_inicial#index"
  get 'pagina_inicial/index'
  get 'criar_conta/index'
  post 'criar_conta/new'
  get 'criar_conta/done'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
