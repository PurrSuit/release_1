class Cabinet < ActiveRecord::Base
  #belongs_to :deputado

  validates :name, presence: true, length: {minimum: 3, maximum: 60}
  validates :anexo, presence: true
  validates :id_dep, presence: true
end
