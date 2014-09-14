Curtocartao::Application.routes.draw do
  ActiveAdmin.routes(self)

  root :to => redirect('/consumo/')

  get "email/personalizado"

  get "email/geral"

  get "historico/detalhes"

  resources :movimentacoes

  resources :grupos

  get "contribuicoes/index"

  get "contribuicoes/detalhes"

  get "contribuicoes/confirma"

  get "contrib/index"

  get "contrib/detalhes"

  get "contrib/confirma"

  resources :custos

  resources :produtos

  resources :clientes, only: [] do
    resources :recargas, only: [] do
      collection do
        post :dez_reais
        post :vinte_reais
        post :cinquenta_reais
      end
    end
  end

  namespace :api do
    namespace :v1 do
      resources :clientes, only: [:index]

      get "produtos" => "produtos#index"
      match 'consumo/:id/confirma' => 'consumo#confirma', :as => :consumo_confirma
    end
  end
   # Th

  match 'consumo/:id/detalhes' => 'consumo#detalhes', :as => :detalhes_consumo
  match 'consumo/:id/confirma' => 'consumo#confirma', :as => :confirma_consumo
  match 'consumo/:id/confirma_api' => 'consumo#confirma_api', :as => :confirma_api_consumo
  match 'consumo/' => 'consumo#index', :as => :consumo
  match 'consumo/novo_cliente' => 'consumo#novo_cliente', :as => :novo_cliente_consumo

  match 'contador/:data/detalhes' => 'contador#detalhes', :as => :detalhes_contador
  match 'contador/:data/relatorio_hora' => 'contador#relatorio_hora', :as => :relatorio_hora_contador
  match 'contador/' => 'contador#index', :as => :contador

  match 'contrib/:id/detalhes' => 'contrib#detalhes', :as => :detalhes_contrib
  match 'contrib/:id/confirma' => 'contrib#confirma', :as => :confirma_contrib
  match 'contrib/:id/confirma_recarga' => 'contrib#confirma_recarga', :as => :confirma_recarga_contrib

  match 'email/envia_persionalizado' => 'email#envia_persionalizado', :as => :envia_personalizado
  match 'historico/:id/detalhes' => 'historico#detalhes', :as => :detalhes_historico
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id(.:format)))'
end
