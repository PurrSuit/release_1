require "net/http"
require "uri"
require "nokogiri"

class Deputy < ActiveRecord::Base
  acts_as :person

  validates_numericality_of :age
  validates_numericality_of :registration

  validates :name, presence: true, length: {maximum: 50}
  validates :age, presence: true
  validates :gender, presence: true
  validates :registration, presence: true, uniqueness: true
  validates :legislation_situation, presence: true, length: {maximum: 100}


  def self.parse_deputy
    url = URI.parse("http://www.camara.gov.br/SitCamaraWS/Deputados.asmx/ObterDeputados")
    request = Net::HTTP::Get.new(url.to_s)
    response = Net::HTTP.start(url.host, url.port) {|http|
      http.request(request)
    }
    puts response.body
  end

end
