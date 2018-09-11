require "pry"

class BestCars::Car
  attr_accessor :name, :price, :engines, :transmission, :fuel_economy, :weight, :test_results, :url, :type, :comp, :website, :specs, :doc
	
  @@all = []

  def self.new_from_index_page(car)
  	self.new(
  	  car.css("span").text,
  	  "https://www.caranddriver.com#{car.attribute("href")}"
  		)
  end

  def initialize(name=nil, url=nil)
  	@name = name
  	@url = url
  	@@all << self
  end

  def self.all
  	# binding.pry
  	@@all
  end

  def self.find(id)
  	self.all[id-1]
  end

  def doc
  	@doc ||= Nokogiri::HTML(open(self.url))
  end

  def type
  	# @type = doc.css("td").css("div")[1].text
  	@type = self.specs[1].text
  end

  def price
  	# @price = doc.css("td").css("div")[3].text
  	@price = self.specs[3].text
  end

  def engine
    # @engine = doc.css("td").css("div")[5].text
    @engine = self.specs[5].text
  end

  def transmission
	# @transmission = doc.css("td").css("div")[7].text
	@transmission = self.specs[7].text
  end

  def fuel_economy
    # @fuel_economy = doc.css("td").css("div")[13].text
    @fuel_economy = self.specs[13].text
  end

  def weight
    # @weight = doc.css("td").css("div")[9].text
    @weight = self.specs[9].text
  end

  def test_results
    # @test_results = doc.css("td").css("div")[11].text
    @test_results = self.specs[11].text
  end

  def website
  	@website = self.url
  end

  def specs
  	@specs = doc.css("td").css("div")
  end

 #  def self.car_specs
 #  	@type = type
	# @price = price
	# @engine = engine
	# @transmission = transmission
	# @fuel_economy = fuel_economy
	# @weight = weight
	# @test_results = test_results
	# @website = self.url
 #  end


end

