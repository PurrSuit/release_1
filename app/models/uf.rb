class Uf < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 4, maximum: 20 }
	validates :initials, presence: true, length: { minimum: 2, maximum: 2 }
	before_save :uppercase_initials
	
	def uppercase_initials
		self.initials.upcase!
	end
end
