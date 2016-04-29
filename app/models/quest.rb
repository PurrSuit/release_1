class Quest < ActiveRecord::Base
	acts_as :gamification
	validates_presence_of :name, :description, :experience_points
	validates_numericality_of :experience_points

	validates :name, presence: true, length: {minimum: 3}
	validates :description, presence: true, length: {minimum: 10, maximum: 140}

end
