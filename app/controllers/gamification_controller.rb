class GamificationController < ApplicationController
	
	def all
		render json: Gamification.all
	end
	
	def show
	
	end
	
	def new
	
	end
	
	def create
	
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

end
