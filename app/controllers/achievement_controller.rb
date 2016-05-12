class AchievementController < ApplicationController

	def all
<<<<<<< HEAD
		render json: Achievement.all
=======
		@achievement = Achievement.all

		respond_to do |format|
			format.html
			format.json {render json: @achievement}
		end
>>>>>>> ad689f8... Achievement controller changed,method delete updated
	end

	def show
		render json: Achievement.find(params[:id])
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
		render 'edit'
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
		id_achievement = params[:id]
<<<<<<< HEAD
		achievements = Achievement.where(id: id_quest)
		achievement = achievements.first
			redirect_to :achievements_all
=======
		achievements = Achievement.where(id: id_achievement)
		achievement = achievements.first
		achievement.destroy
		redirect_to :gamifications_all
>>>>>>> ad689f8... Achievement controller changed,method delete updated
	end

	private

	def achievement_params
		params.require(:achievement).permit(:name, :experience_points, :description)
	end
end
