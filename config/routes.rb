Rails.application.routes.draw do
  get 'reporte/index'
 root "ventaipads#index"

  resources :ventaipads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
