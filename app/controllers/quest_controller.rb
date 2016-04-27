class QuestController < ApplicationController
	
	def all
		#render json: Gamification.all
		@quests = Quest.all
	end
	
	def show
		@quest = Quest.find(params[:id])
	end
	
	def new
		@quest = Quest.new	
	end
	
	def create
		@quest = Quest.new(quest_params)
		if @quest.save
			redirect_to :quests_all
		end
	end
	
	def edit
		@quest = Quest.find(params[:id])
	
	end
	
	def update
		@quest = Quest.find(params[:id])
		if @quest.update(quest_params)
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
	end

	private
	
	def quest_params
		params.require(:quest).permit(:name, :experience_points, :description)
	end

end
