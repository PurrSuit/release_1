class GamificationController < ApplicationController
	
	def all
		#render json: Gamification.all
		@gamifications = Gamification.all
	end
	
	def show
		@gamification = Gamification.find(params[:id])
	end
	
	def new
		@gamification = Gamification.new	
	end
	
	def create
		@gamification = Gamification.new(gamification_params)
		if @gamification.save
			redirect_to :gamifications_all
		end
	end
	
	def edit
	
	end
	
	def update
	
	end
	
	def delete
		id_gamification = params[:id]
		gamifications = Gamification.where(id: id_gamification)
		gamification = gamifications.first
		redirect_to :gamifications_all	
	end

	private
	
	def gamification_params
		params.require(:gamification).permit(:name, :experience_points, :description)
	end

end
