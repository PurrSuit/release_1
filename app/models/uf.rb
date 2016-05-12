class Uf < ActiveRecord::Base
	has_many :deputies
	has_many :users

	validates :name, presence: true, length: { minimum: 4, maximum: 20 }, uniqueness: true
	validates :initials, presence: true, length: { minimum: 2, maximum: 2 }, uniqueness: true
	before_save :uppercase_initials

	def uppercase_initials
		self.initials.upcase!
	end
end
