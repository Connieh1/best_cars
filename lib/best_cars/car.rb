class BestCars::Car
  attr_accessor :name, :price, :engines, :transmission, :fuel_economy, :weight, :test_results, :url, :type, :comp

	
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
  	@@all
  end

  def self.find(id)
  	self.all[id]
  end

  def doc
  	doc ||= Nokogiri::HTML(open(self.url))
  end



# 	def self.all
# 	  @@all
# 	end

# 	def self.carList
# 		self.scrape_cars
# 	end

# 	def self.scrape_cars
# 		cars = []

# 		cars << self.scrape_car_1
# 		cars << self.scrape_car_2
# 		cars << self.scrape_car_3
# 		cars << self.scrape_car_4
# 		cars << self.scrape_car_5
# 		cars << self.scrape_car_6
# 		cars << self.scrape_car_7
# 		cars << self.scrape_car_8
# 		cars << self.scrape_car_9
# 		cars << self.scrape_car_10
		
# 		cars
# 	end

# 	def self.scrape_car_1
# 	  doc = Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-alfa-romeo-giulia-giulia-quadrifoglio-page-2"))
# 	  car_1 = self.new
# 	  car_1.name = doc.css("h1.mv1").text
# 	  car_1.price = doc.css("td").css("div")[3].text
# 	  car_1.engines = doc.css("td").css("div")[5].text
# 	  car_1.transmission = doc.css("td").css("div")[7].text
# 	  car_1.fuel_economy = doc.css("td").css("div")[13].text
# 	  car_1.weight = doc.css("td").css("div")[9].text
# 	  car_1.test_results = doc.css("td").css("div")[11].text 
# 	  car_1.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-alfa-romeo-giulia-giulia-quadrifoglio-page-2"
# 	  car_1.comp = "#{car_1.name} - #{car_1.price}\nEngine : #{car_1.engines} \nTransmission : #{car_1.transmission}\nFuel Economy : #{car_1.fuel_economy}\nWeight : #{car_1.weight}\nTest Results : #{car_1.test_results}\nURL : #{car_1.url}\n\n\n"
# 	  car_1
# 	end
		
# 	def self.scrape_car_2
# 		car_2 = self.new
# 		doc = Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-audi-rs3-page-3"))
# 		car_2.name = doc.css("h1.mv1").text
# 		car_2.price = doc.css("td").css("div")[3].text
# 		car_2.engines = doc.css("td").css("div")[5].text
# 		car_2.transmission = doc.css("td").css("div")[7].text
# 		car_2.fuel_economy = doc.css("td").css("div")[13].text
# 		car_2.weight = doc.css("td").css("div")[9].text
# 		car_2.test_results = doc.css("td").css("div")[11].text
# 		car_2.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-audi-rs3-page-3"
# 		car_2.comp = "#{car_2.name} - #{car_2.price}\nEngine : #{car_2.engines} \nTransmission : #{car_2.transmission}\nFuel Economy : #{car_2.fuel_economy}\nWeight : #{car_2.weight}\nTest Results : #{car_2.test_results}\nURL : #{car_2.url}\n\n\n"
# 		car_2
# 	end

# 	def self.scrape_car_3
# 		car_3 = self.new
# 		doc = Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-chevrolet-camaro-v-6-ss-zl1-coupes-page-4"))
# 		car_3.name = doc.css("h1.mv1").text
# 		car_3.price = doc.css("td").css("div")[3].text
# 		car_3.engines = doc.css("td").css("div")[5].text
# 		car_3.transmission = doc.css("td").css("div")[7].text
# 		car_3.fuel_economy = doc.css("td").css("div")[13].text
# 		car_3.weight = doc.css("td").css("div")[9].text
# 		car_3.test_results = doc.css("td").css("div")[11].text
# 		car_3.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-chevrolet-camaro-v-6-ss-zl1-coupes-page-4"
# 		car_3.comp = "#{car_3.name} - #{car_3.price}\nEngine : #{car_3.engines} \nTransmission : #{car_3.transmission}\nFuel Economy : #{car_3.fuel_economy}\nWeight : #{car_3.weight}\nTest Results : #{car_3.test_results}\nURL : #{car_3.url}\n\n\n"
# 		car_3
# 	end

# 	def self.scrape_car_4	
# 		car_4 = self.new
# 		doc = Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-chevrolet-corvette-grand-sport-page-5"))
# 		car_4.name = doc.css("h1.mv1").text
# 		car_4.price = doc.css("td").css("div")[3].text
# 		car_4.engines = doc.css("td").css("div")[5].text
# 		car_4.transmission = doc.css("td").css("div")[7].text
# 		car_4.fuel_economy = doc.css("td").css("div")[13].text
# 		car_4.weight = doc.css("td").css("div")[9].text
# 		car_4.test_results = doc.css("td").css("div")[11].text
# 		car_4.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-chevrolet-corvette-grand-sport-page-5"
# 		car_4.comp = "#{car_4.name} - #{car_4.price}\nEngine : #{car_4.engines} \nTransmission : #{car_4.transmission}\nFuel Economy : #{car_4.fuel_economy}\nWeight : #{car_4.weight}\nTest Results : #{car_4.test_results}\nURL : #{car_4.url}\n\n\n"
# 		car_4
# 	end

# 	def self.scrape_car_5
# 		car_5 = self.new
# 		doc = Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-honda-accord-page-6"))
# 		car_5.name = doc.css("h1.mv1").text
# 		car_5.price = doc.css("td").css("div")[3].text
# 		car_5.engines = doc.css("td").css("div")[5].text
# 		car_5.transmission = doc.css("td").css("div")[7].text
# 		car_5.fuel_economy = doc.css("td").css("div")[13].text
# 		car_5.weight = doc.css("td").css("div")[9].text
# 		car_5.test_results = doc.css("td").css("div")[11].text
# 		car_5.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-honda-accord-page-6"
# 		car_5.comp = "#{car_5.name} - #{car_5.price}\nEngine : #{car_5.engines} \nTransmission : #{car_5.transmission}\nFuel Economy : #{car_5.fuel_economy}\nWeight : #{car_5.weight}\nTest Results : #{car_5.test_results}\nURL : #{car_5.url}\n\n\n"
# 		car_5
# 	end

# 	def self.scrape_car_6
# 		car_6 = self.new
# 		doc = Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-honda-civic-sport-si-type-r-page-7"))
# 		car_6.name = doc.css("h1.mv1").text
# 		car_6.price = doc.css("td").css("div")[3].text
# 		car_6.engines = doc.css("td").css("div")[5].text
# 		car_6.transmission = doc.css("td").css("div")[7].text
# 		car_6.fuel_economy = doc.css("td").css("div")[13].text
# 		car_6.weight = doc.css("td").css("div")[9].text
# 		car_6.test_results = doc.css("td").css("div")[11].text
# 		car_6.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-honda-civic-sport-si-type-r-page-7"
# 		car_6.comp = "#{car_6.name} - #{car_6.price}\nEngine : #{car_6.engines} \nTransmission : #{car_6.transmission}\nFuel Economy : #{car_6.fuel_economy}\nWeight : #{car_6.weight}\nTest Results : #{car_6.test_results}\nURL : #{car_6.url}\n\n\n"
# 		car_6
# 	end

# 	def self.scrape_car_7
# 		car_7 = self.new
# 		doc = Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-mazda-mx-5-miata-rf-page-8"))
# 		car_7.name = doc.css("h1.mv1").text
# 		car_7.price = doc.css("td").css("div")[3].text
# 		car_7.engines = doc.css("td").css("div")[5].text
# 		car_7.transmission = doc.css("td").css("div")[7].text
# 		car_7.fuel_economy = doc.css("td").css("div")[13].text
# 		car_7.weight = doc.css("td").css("div")[9].text
# 		car_7.test_results = doc.css("td").css("div")[11].text
# 		car_7.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-mazda-mx-5-miata-rf-page-8"
# 		car_7.comp = "#{car_7.name} - #{car_7.price}\nEngine : #{car_7.engines} \nTransmission : #{car_7.transmission}\nFuel Economy : #{car_7.fuel_economy}\nWeight : #{car_7.weight}\nTest Results : #{car_7.test_results}\nURL : #{car_7.url}\n\n\n"
# 		car_7
# 	end

# 	def self.scrape_car_8
# 		car_8 = self.new
# 		doc = Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-mercedes-benz-e400-mercedes-amg-e43-page-9"))
# 		car_8.name = doc.css("h1.mv1").text
# 		car_8.price = doc.css("td").css("div")[3].text
# 		car_8.engines = doc.css("td").css("div")[5].text
# 		car_8.transmission = doc.css("td").css("div")[7].text
# 		car_8.fuel_economy = doc.css("td").css("div")[13].text
# 		car_8.weight = doc.css("td").css("div")[9].text
# 		car_8.test_results = doc.css("td").css("div")[11].text
# 		car_8.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-mercedes-benz-e400-mercedes-amg-e43-page-9"
# 		car_8.comp = "#{car_8.name} - #{car_8.price}\nEngine : #{car_8.engines} \nTransmission : #{car_8.transmission}\nFuel Economy : #{car_8.fuel_economy}\nWeight : #{car_8.weight}\nTest Results : #{car_8.test_results}\nURL : #{car_8.url}\n\n\n"
# 		car_8
# 	end

# 	def self.scrape_car_9
# 		car_9 = self.new
# 		doc = Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-porsche-718-boxster-cayman-page-10"))
# 		car_9.name = doc.css("h1.mv1").text
# 		car_9.price = doc.css("td").css("div")[3].text
# 		car_9.engines = doc.css("td").css("div")[5].text
# 		car_9.transmission = doc.css("td").css("div")[7].text
# 		car_9.fuel_economy = doc.css("td").css("div")[13].text
# 		car_9.weight = doc.css("td").css("div")[9].text
# 		car_9.test_results = doc.css("td").css("div")[11].text
# 		car_9.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-porsche-718-boxster-cayman-page-10"
# 		car_9.comp = "#{car_9.name} - #{car_9.price}\nEngine : #{car_9.engines} \nTransmission : #{car_9.transmission}\nFuel Economy : #{car_9.fuel_economy}\nWeight : #{car_9.weight}\nTest Results : #{car_9.test_results}\nURL : #{car_9.url}\n\n\n"
# 		car_9
# 	end

# 	def self.scrape_car_10
# 		car_10 = self.new
# 		doc = Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-volkswagen-golf-alltrack-e-golf-gti-r-sportwagen-page-11"))
# 		car_10.name = doc.css("h1.mv1").text
# 		car_10.price = doc.css("td").css("div")[3].text
# 		car_10.engines = doc.css("td").css("div")[5].text
# 		car_10.transmission = doc.css("td").css("div")[7].text
# 		car_10.fuel_economy = doc.css("td").css("div")[13].text
# 		car_10.weight = doc.css("td").css("div")[9].text
# 		car_10.test_results = doc.css("td").css("div")[11].text
# 		car_10.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-volkswagen-golf-alltrack-e-golf-gti-r-sportwagen-page-11"
# 		car_10.comp = "#{car_10.name} - #{car_10.price}\nEngine : #{car_10.engines} \nTransmission : #{car_10.transmission}\nFuel Economy : #{car_10.fuel_economy}\nWeight : #{car_10.weight}\nTest Results : #{car_10.test_results}\nURL : #{car_10.url}\n\n\n"
# 		car_10
# 	end
# end