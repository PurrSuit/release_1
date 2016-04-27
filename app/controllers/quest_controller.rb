class QuestController < ApplicationController

	def all
		render json: Quest.all
	end

	def show
		render json: Quest.find(params[:id])
	end

	def new
		@quest = Quest.new
	end

	def create
		@quest = Quest.new(quest_params)
		if @quest.save
			redirect_to :quests_all
		else
			redirect_to '/quests/new'
		end
	end

	def edit
<<<<<<< HEAD
		@quest = Quest.find(params[:id])
=======

		@quest = Quest.find(params[:id])
		render 'edit'
>>>>>>> 0559f52... Quest's views repair
	end

	def update
		@quest = Quest.find(params[:id])

		if @quest.update(quest_params)
<<<<<<< HEAD

			redirect_to @quest
		else
			render 'edit'
		end
	end

	def delete
		id_quest = params[:id]
		quests = Quest.where(id: id_quest)
		quest = quests.first
			redirect_to :quests_all
		else
			render 'edit'
		end
=======
			redirect_to :quests_all
		else 
			render 'edit'
		end
	end
	
	 def delete
	 	id_quest = params[:id]
        quests = Quest.where(id: id_quest)
        quest = quests.first
     	quest.destroy
        redirect_to :quests_all
>>>>>>> 95d32fa... Quest controller pronta com todos os métodos
	end

	private

	def quest_params
		params.require(:quest).permit(:name, :experience_points, :description)
	end
