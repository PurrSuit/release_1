class GamificationController < ApplicationController
	def all
		@gamifications = Gamification.all
	end
<<<<<<< HEAD
=======
<<<<<<< HEAD
	
	def show
<<<<<<< HEAD
		@gamification = Gamification.find(params[:id])
=======
		id_gamification = params[:id]
		gamifications = Gamification.where(id: id_gamification)
		gamification = nil
>>>>>>> ab07179... Show gamification alterado
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

=======
>>>>>>> c7ff44a... Achievement Controller
>>>>>>> 3f50d85c17b0e064ad4a97fbde56ead7173714d4
end
