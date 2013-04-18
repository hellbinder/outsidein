Outsidein::Application.routes.draw do
  root to: 'libraries#index'
  match "/libraries/:id/books/new" => "libraries#add_book", as: "add_library_book", via: [:get, :put]
  resources :libraries
  resources :books
end

