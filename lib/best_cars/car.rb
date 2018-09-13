class BestCars::Car
  attr_accessor :name, :price, :engines, :transmission, :fuel_economy, :weight, :test_results, :type, :comp, :website, :specs, :doc
	
  @@all = []

  def initialize(name=nil, website=nil)
  	@name = name
  	@website = website
  	@@all << self
  end

  def self.all
  	@@all
  end

  def self.find(id)
  	self.all[id-1]
  end
end

