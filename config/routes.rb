Rails.application.routes.draw do
  root 'welcome#index'

  get '/search/index', to: 'search#index'
end
