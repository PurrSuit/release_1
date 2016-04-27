Rails.application.routes.draw do
  get 'users/all' => 'user#all', format: :json
  get 'users/new' => 'user#new'
  post 'users/create' => 'user#create', format: :json
  get 'users/:id' => 'user#show', format: :json
  get 'users/:id/update' => 'user#update', format: :json, as: :users_update
  delete 'users/:id' => 'user#delete', as: :users_delete

	get 'gamifications/all' => 'gamification#all', format: :json

	get 'achievements/all' => 'achievement#all', format: :json
	get 'achievements/new' => 'achievement#new', format: :json, as: :achievements_new
	post 'achievements/create' => 'achievement#create', as: :achievements
	get 'achievements/:id' => 'achievement#show', format: :json
		
	get 'quests/all' => 'quest#all', format: :json
	get 'quests/new' => 'quest#new', format: :json
	post 'quests/create' => 'quest#create', as: :quests
	get 'quests/:id' => 'quest#show', format: :json
	get 'quests/:id/update' => 'quest#update', format: :json, as: :quests_update
	delete 'quests/:id' => 'quest#delete', as: :quests_delete
end
