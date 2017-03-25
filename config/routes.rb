Rails.application.routes.draw do
  get '/:id/entries', to: 'entries#index', as: 'entry'
    get 'entries/:id', to: 'entries#show', as: 'entry_show'

  #get 'entries/show'
    #resources :entries

  resources :feeds do
      member do
          resources :entries, only: [:index, :show]
      end
  end
    
    root 'feeds#index'
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
