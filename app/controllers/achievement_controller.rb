class AchievementController < ApplicationController

	def all
		@achievements = Achievement.all
	end

	def show
		@achievement = Achievement.find(params[:id])
	end

	def new
		@achievement = Achievement.new
	end

	def create
		@achievement = Achievement.new(achievement_params)
		if @achievement.save
			redirect_to :achievements_all
		end
	end

	def edit
		@achievement = Achievement.find(params[:id])
	end

	def update
		@achievement = Achievement.find(params[:id])
		if @achievement.update(achievement_params)
			redirect_to @achievement
		else
			render 'edit'
		end
	end

	def delete

	end

	private

	def achievement_params
		params.require(:achievement).permit(:name, :experience_points, :description)
	end
end
