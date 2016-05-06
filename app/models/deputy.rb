class Deputy < ActiveRecord::Base
  acts_as :person

  validates_numericality_of :age
  validates_numericality_of :registration

  validates :name, presence: true, length: {maximum: 50}
  validates :age, presence: true
  validates :gender, presence: true
  validates :registration, presence: true, uniqueness: true
  validates :legislation_situation, presence: true, length: {maximum: 100}

end
