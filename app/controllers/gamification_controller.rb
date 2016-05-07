class GamificationController < ApplicationController
	def all
		@gamifications = Gamification.all
	end
<<<<<<< HEAD
	def show
		@gamification = Gamification.find(params[:id])
	end
=======

>>>>>>> f1024f8... hehe
end
