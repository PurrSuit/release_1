class Quest < ActiveRecord::Base
	acts_as :gamification
	validates_presence_of :name, :description, :experience_points
	validates_numericality_of :experience_points

	validades :name, lenght{minimum: 3}, uniquiness
	validades :description, lenght{minimum: 10, maximum: 100}

end
