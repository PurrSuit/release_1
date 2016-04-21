class Gamification < ActiveRecord::Base
	validates_presence_of :name, :experience_points, :description
	validates_numericality_of :experience_points
end
