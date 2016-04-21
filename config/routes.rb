Rails.application.routes.draw do
  get 'users/all' => 'user#all', format: :json
  get 'users/new' => 'user#new'
  get 'users/create' => 'user#create', format: :json
  get 'users/:id' => 'user#show', format: :json
  get 'users/:id/update' => 'user#update', format: :json, as: :users_update
  delete 'users/:id' => 'user#delete', as: :users_delete
end
