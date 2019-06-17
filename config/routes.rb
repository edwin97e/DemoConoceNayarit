Rails.application.routes.draw do
  resources :eventcategories
  get 'pueblos_magicos', to: "pueblos_magicos#index"
  get 'pueblos_magicos/:id', to: "pueblos_magicos#show", as: "pueblo_magico"
  resources :magictowns
  get 'eventos/index'
  mount Ckeditor::Engine => '/ckeditor'
  resources :events
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
