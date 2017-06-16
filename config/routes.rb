JsonToForm::Application.routes.draw do
  root 'landings#index'

  post '/reply/', to: 'replies#create'
  resources :fieldsets, except: [ :edit, :update ] do |r|
    get '/stats/', to: 'stats#show'
    get '/export/', to: 'fieldsets#export'
  end
end
