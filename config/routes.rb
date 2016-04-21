Rails.application.routes.draw do
  get 'users/all' => 'user#all', format: :json
  get 'users/new' => 'user#new'
  post 'users/create' => 'user#create', format: :json
  get 'users/:id' => 'user#show', format: :json
  get 'users/:id/update' => 'user#update', format: :json, as: :users_update
  delete 'users/:id' => 'user#delete', as: :users_delete

	get 'gamifications/all' => 'gamification#all'
	get 'gamifications/new' => 'gamification#new'
	post 'gamifications/create' => 'gamification#create'
	get 'gamifications/:id' => 'gamification#show'
	get 'gamifications/:id/update' => 'gamification#update'
	delete 'gamifications/:id' => 'user#delete'
end
