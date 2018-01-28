Rails.application.routes.draw do

  root to: "static_pages#index"

  get 'sobre', to: "static_pages#about", as: :about

  get 'contato/novo_contato', to: "stores#new", as: :new_store
  get 'contato', to: "stores#index", as: :stores
  post 'contato', to: "stores#create"
  delete 'contato/:id', to: "stores#destroy", as: :destroy_store

  get 'produto/novo_produto', to: "produtos#new", as: :new_produto
  get 'produto', to: "produtos#index", as: :produtos
  post 'produto', to: "produtos#create"
  delete 'produto/:id', to: "produtos#destroy", as: :destroy_produto

end
