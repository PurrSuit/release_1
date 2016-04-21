Rails.application.routes.draw do
  get 'users/all' => 'user#all', format: :json
  get 'users/new' => 'user#new'
  get 'users/create' => 'user#create', format: :json
  get 'users/:id' => 'user#show', format: :json
  get 'users/:id/update' => 'user#update', format: :json, as: :users_update
  delete 'users/:id' => 'user#delete', as: :users_delete
	
	get 'gamifications/all' => 'gamification#all', format: :json
	get 'gamifications/new' => 'gamification#new', format: :json
	post 'gamifications/create' => 'gamification#create'
	get 'gamifications/:id' => 'gamification#show', format: :json
	get 'gamification/:id/update' =>'gamification#update', format: :json, as: :gamifications_update
	delete 'gamification/:id' => 'gamification#delete', as: :gamifications_delete

end
