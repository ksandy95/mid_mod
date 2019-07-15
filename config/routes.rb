Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'welcome#index'

  get '/authors', to: 'authors#index', as: :authors
  get '/authors/new', to: 'authors#new', as: :new_author
  get '/authors/:id', to: 'authors#show', as: :author
  post '/authors', to: 'authors#create'
  # get '/authors/:id/edit', to: 'authors#edit', as: :edit_author
  # patch '/authors/:id', to: 'authors#update'
  # delete '/authors/:id', to: 'authors#destroy'

  get '/books', to: 'books#index', as: :books
  get '/authors/:author_id/books', to: 'books#index', as: :author_books
  get '/authors/:author_id/books/new', to: 'book#new', as: :new_book
  get '/books/:id', to: 'books#show', as: :book
  post '/authors/:author_id/books', to: 'books#create'
  # get '/books/:id/edit', to: 'books#edit',
  # patch '/books/:id', to: 'books#update'
  # delete '/books/:id', to: 'books#destroy',

end
