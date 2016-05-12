class Party < ActiveRecord::Base
	belongs_to :uf
	has_many :deputies

	validates :name, presence: true, length: { minimum: 10 }, uniqueness: true
	validates :initials, presence: true, length: { minimum: 2 }, uniqueness: true
	validates :uf_id , presence: true

end
