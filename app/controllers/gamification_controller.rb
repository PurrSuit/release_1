class GamificationController < ApplicationController
	def all
		@gamifications = Gamification.all
	end
end
