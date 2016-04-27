class Achievement < ActiveRecord::Base
	acts_as :gamification
	validates_presence_of :name, :description, :experience_points
	validates_numericality_of :experience_points
end
