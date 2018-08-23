class BestCars::Car
		attr_accessor :name, :price, :engines, :transmission, :fuel_economy, :weight, :test_results, :url

	def self.carList


		# puts <<-DOC
		# 1. car_1 aoc
		# 2. car_2 boc
		# DOC

		self.scrape_cars
	end

	def self.scrape_cars
		cars = []

		cars << self.scrape_carAndDriver
		# car_1 = self.new
		# car_1.name = "audi"
		# car_1.price = "$20"
		# car_1.engines = "slammin"
		# car_1.transmission = "jammin"
		# car_1.fuel_economy = "kickin"
		# car_1.weight = "wicked"
		# car_1.test_results = "passed"
		# car_1.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-alfa-romeo-giulia-giulia-quadrifoglio-page-2"

		# car_2 = self.new
		# car_2.name = "axle"
		# car_2.price = "$20"
		# car_2.engines = "slammin"
		# car_2.transmission = "jammin"
		# car_2.fuel_economy = "kickin"
		# car_2.weight = "wicked"
		# car_2.test_results = "passed"
		# car_2.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-audi-rs3-page-3"

		# [car_1, car_2]

	 #  html = open('https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature')
		# doc = Nokogiri::HTML(html)
		# # doc.css(".small-12").css("span").each do |car| puts car.text end
		# # doc.css(".small-12").first.css("span").text
		# # 2 doc.css(".small-12")[1].css("span").text
		# # puts title
		# doc.css(".small-12").css("span").each do |car| puts car.text end
		# doc = Nokogiri::HTML(open(url))

		# car_1 = self.new
		# car_1.name = doc.css("h1.mv1").text
		# car_1.price = doc.css("td").css("div")[3].text
		# car_1.engines = doc.css("td").css("div")[5].text
		# car_1.transmission = doc.css("td").css("div")[7].text
		# car_1.fuel_economy = doc.css("td").css("div")[13].text
		# car_1.weight = doc.css("td").css("div")[9].text
		# car_1.test_results = doc.css("td").css("div")[11].text
		# car_1.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-alfa-romeo-giulia-giulia-quadrifoglio-page-2"


		# car_2 = self.new
		# car_2.name = doc.css("h1.mv1").text
		# car_2.price = doc.css("td").css("div")[3].text
		# car_2.engines = doc.css("td").css("div")[5].text
		# car_2.transmission = doc.css("td").css("div")[7].text
		# car_2.fuel_economy = doc.css("td").css("div")[13].text
		# car_2.weight = doc.css("td").css("div")[9].text
		# car_2.test_results = doc.css("td").css("div")[11].text
		# car_2.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-audi-rs3-page-3"

		# car_3 = self.new
		# car_3.name = doc.css("h1.mv1").text
		# car_3.price = doc.css("td").css("div")[3].text
		# car_3.engines = doc.css("td").css("div")[5].text
		# car_3.transmission = doc.css("td").css("div")[7].text
		# car_3.fuel_economy = doc.css("td").css("div")[13].text
		# car_3.weight = doc.css("td").css("div")[9].text
		# car_3.test_results = doc.css("td").css("div")[11].text
		# car_3.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-chevrolet-camaro-v-6-ss-zl1-coupes-page-4"

		# car_4 = self.new
		# car_4.name = doc.css("h1.mv1").text
		# car_4.price = doc.css("td").css("div")[3].text
		# car_4.engines = doc.css("td").css("div")[5].text
		# car_4.transmission = doc.css("td").css("div")[7].text
		# car_4.fuel_economy = doc.css("td").css("div")[13].text
		# car_4.weight = doc.css("td").css("div")[9].text
		# car_4.test_results = doc.css("td").css("div")[11].text
		# car_4.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-chevrolet-corvette-grand-sport-page-5"

		# car_5 = self.new
		# car_5.name = doc.css("h1.mv1").text
		# car_5.price = doc.css("td").css("div")[3].text
		# car_5.engines = doc.css("td").css("div")[5].text
		# car_5.transmission = doc.css("td").css("div")[7].text
		# car_5.fuel_economy = doc.css("td").css("div")[13].text
		# car_5.weight = doc.css("td").css("div")[9].text
		# car_5.test_results = doc.css("td").css("div")[11].text
		# car_5.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-honda-accord-page-6"

		# car_6 = self.new
		# car_6.name = doc.css("h1.mv1").text
		# car_6.price = doc.css("td").css("div")[3].text
		# car_6.engines = doc.css("td").css("div")[5].text
		# car_6.transmission = doc.css("td").css("div")[7].text
		# car_6.fuel_economy = doc.css("td").css("div")[13].text
		# car_6.weight = doc.css("td").css("div")[9].text
		# car_6.test_results = doc.css("td").css("div")[11].text
		# car_6.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-honda-civic-sport-si-type-r-page-7"

		# car_7 = self.new
		# car_7.name = doc.css("h1.mv1").text
		# car_7.price = doc.css("td").css("div")[3].text
		# car_7.engines = doc.css("td").css("div")[5].text
		# car_7.transmission = doc.css("td").css("div")[7].text
		# car_7.fuel_economy = doc.css("td").css("div")[13].text
		# car_7.weight = doc.css("td").css("div")[9].text
		# car_7.test_results = doc.css("td").css("div")[11].text
		# car_7.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-mazda-mx-5-miata-rf-page-8"

		# car_8 = self.new
		# car_8.name = doc.css("h1.mv1").text
		# car_8.price = doc.css("td").css("div")[3].text
		# car_8.engines = doc.css("td").css("div")[5].text
		# car_8.transmission = doc.css("td").css("div")[7].text
		# car_8.fuel_economy = doc.css("td").css("div")[13].text
		# car_8.weight = doc.css("td").css("div")[9].text
		# car_8.test_results = doc.css("td").css("div")[11].text
		# car_8.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-mercedes-benz-e400-mercedes-amg-e43-page-9"

		# car_9 = self.new
		# car_9.name = doc.css("h1.mv1").text
		# car_9.price = doc.css("td").css("div")[3].text
		# car_9.engines = doc.css("td").css("div")[5].text
		# car_9.transmission = doc.css("td").css("div")[7].text
		# car_9.fuel_economy = doc.css("td").css("div")[13].text
		# car_9.weight = doc.css("td").css("div")[9].text
		# car_9.test_results = doc.css("td").css("div")[11].text
		# car_9.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-porsche-718-boxster-cayman-page-10"

		# car_10 = self.new
		# car_10.name = doc.css("h1.mv1").text
		# car_10.price = doc.css("td").css("div")[3].text
		# car_10.engines = doc.css("td").css("div")[5].text
		# car_10.transmission = doc.css("td").css("div")[7].text
		# car_10.fuel_economy = doc.css("td").css("div")[13].text
		# car_10.weight = doc.css("td").css("div")[9].text
		# car_10.test_results = doc.css("td").css("div")[11].text
		# car_10.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-volkswagen-golf-alltrack-e-golf-gti-r-sportwagen-page-11"

		# [car_1, car_2, car_3, car_4, car_5, car_6, car_7, car_8, car_9, car_10]
	end

	def self.scrape_car_1

		doc = Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-alfa-romeo-giulia-giulia-quadrifoglio-page-2"))
	


		# car_1 = self.new
		# car_1.name = "audi"
		# car_1.price = "$20"
		# car_1.engines = "slammin"
		# car_1.transmission = "jammin"
		# car_1.fuel_economy = "kickin"
		# car_1.weight = "wicked"
		# car_1.test_results = "passed"
		# car_1.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-alfa-romeo-giulia-giulia-quadrifoglio-page-2"

		# car_2 = self.new
		# car_2.name = "axle"
		# car_2.price = "$20"
		# car_2.engines = "slammin"
		# car_2.transmission = "jammin"
		# car_2.fuel_economy = "kickin"
		# car_2.weight = "wicked"
		# car_2.test_results = "passed"
		# car_2.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-audi-rs3-page-3"

		# [car_1, car_2]


		# doc = Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature"))
		# doc.css(".small-12").css("span").each do |car| puts car.text end

		# doc = Nokogiri::HTML(open(url))

		# car_1 = self.new
		# # car_1.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-alfa-romeo-giulia-giulia-quadrifoglio-page-2"
		# doc = Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-alfa-romeo-giulia-giulia-quadrifoglio-page-2"))
		# car_1.name = doc.css("h1.mv1").text
		# # car_1.price = doc.css("td").css("div")[3].text
		# # car_1.engines = doc.css("td").css("div")[5].text
		# # car_1.transmission = doc.css("td").css("div")[7].text
		# # car_1.fuel_economy = doc.css("td").css("div")[13].text
		# # car_1.weight = doc.css("td").css("div")[9].text
		# # car_1.test_results = doc.css("td").css("div")[11].text
		# # car_1.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-alfa-romeo-giulia-giulia-quadrifoglio-page-2"
		

		# car_2 = self.new
		# doc = Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-audi-rs3-page-3"))
		# car_2.name = doc.css("h1.mv1").text
		# car_2.price = doc.css("td").css("div")[3].text
		# car_2.engines = doc.css("td").css("div")[5].text
		# car_2.transmission = doc.css("td").css("div")[7].text
		# car_2.fuel_economy = doc.css("td").css("div")[13].text
		# car_2.weight = doc.css("td").css("div")[9].text
		# car_2.test_results = doc.css("td").css("div")[11].text
		# car_2.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-audi-rs3-page-3"
		# binding.pry
		# car_3 = self.new
		# car_3.doc = Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-chevrolet-camaro-v-6-ss-zl1-coupes-page-4"))
		# car_3.name = doc.css("h1.mv1").text
		# car_3.price = doc.css("td").css("div")[3].text
		# car_3.engines = doc.css("td").css("div")[5].text
		# car_3.transmission = doc.css("td").css("div")[7].text
		# car_3.fuel_economy = doc.css("td").css("div")[13].text
		# car_3.weight = doc.css("td").css("div")[9].text
		# car_3.test_results = doc.css("td").css("div")[11].text
		# car_3.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-chevrolet-camaro-v-6-ss-zl1-coupes-page-4"
		



		# car_3 = self.new
		# doc = Nokogiri::HTML(open(car_3.url))
		# car_3.name = doc.css("h1.mv1").text
		# car_3.price = doc.css("td").css("div")[3].text
		# car_3.engines = doc.css("td").css("div")[5].text
		# car_3.transmission = doc.css("td").css("div")[7].text
		# car_3.fuel_economy = doc.css("td").css("div")[13].text
		# car_3.weight = doc.css("td").css("div")[9].text
		# car_3.test_results = doc.css("td").css("div")[11].text
		# car_3.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-chevrolet-camaro-v-6-ss-zl1-coupes-page-4"

		# car_4 = self.new
		# doc = Nokogiri::HTML(open(car_4.url))
		# car_4.name = doc.css("h1.mv1").text
		# car_4.price = doc.css("td").css("div")[3].text
		# car_4.engines = doc.css("td").css("div")[5].text
		# car_4.transmission = doc.css("td").css("div")[7].text
		# car_4.fuel_economy = doc.css("td").css("div")[13].text
		# car_4.weight = doc.css("td").css("div")[9].text
		# car_4.test_results = doc.css("td").css("div")[11].text
		# car_4.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-chevrolet-corvette-grand-sport-page-5"
		
		# car_5 = self.new
		# doc = Nokogiri::HTML(open(car_5.url))
		# car_5.name = doc.css("h1.mv1").text
		# car_5.price = doc.css("td").css("div")[3].text
		# car_5.engines = doc.css("td").css("div")[5].text
		# car_5.transmission = doc.css("td").css("div")[7].text
		# car_5.fuel_economy = doc.css("td").css("div")[13].text
		# car_5.weight = doc.css("td").css("div")[9].text
		# car_5.test_results = doc.css("td").css("div")[11].text
		# car_5.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-honda-accord-page-6"

		# car_6 = self.new
		# doc = Nokogiri::HTML(open(car_6.url))
		# car_6.name = doc.css("h1.mv1").text
		# car_6.price = doc.css("td").css("div")[3].text
		# car_6.engines = doc.css("td").css("div")[5].text
		# car_6.transmission = doc.css("td").css("div")[7].text
		# car_6.fuel_economy = doc.css("td").css("div")[13].text
		# car_6.weight = doc.css("td").css("div")[9].text
		# car_6.test_results = doc.css("td").css("div")[11].text
		# car_6.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-honda-civic-sport-si-type-r-page-7"

		# car_7 = self.new
		# doc = Nokogiri::HTML(open(car_7.url))
		# car_7.name = doc.css("h1.mv1").text
		# car_7.price = doc.css("td").css("div")[3].text
		# car_7.engines = doc.css("td").css("div")[5].text
		# car_7.transmission = doc.css("td").css("div")[7].text
		# car_7.fuel_economy = doc.css("td").css("div")[13].text
		# car_7.weight = doc.css("td").css("div")[9].text
		# car_7.test_results = doc.css("td").css("div")[11].text
		# car_7.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-mazda-mx-5-miata-rf-page-8"

		# car_8 = self.new
		# doc = Nokogiri::HTML(open(car_8.url))
		# car_8.name = doc.css("h1.mv1").text
		# car_8.price = doc.css("td").css("div")[3].text
		# car_8.engines = doc.css("td").css("div")[5].text
		# car_8.transmission = doc.css("td").css("div")[7].text
		# car_8.fuel_economy = doc.css("td").css("div")[13].text
		# car_8.weight = doc.css("td").css("div")[9].text
		# car_8.test_results = doc.css("td").css("div")[11].text
		# car_8.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-mercedes-benz-e400-mercedes-amg-e43-page-9"

		# car_9 = self.new
		# doc = Nokogiri::HTML(open(car_9.url))
		# car_9.name = doc.css("h1.mv1").text
		# car_9.price = doc.css("td").css("div")[3].text
		# car_9.engines = doc.css("td").css("div")[5].text
		# car_9.transmission = doc.css("td").css("div")[7].text
		# car_9.fuel_economy = doc.css("td").css("div")[13].text
		# car_9.weight = doc.css("td").css("div")[9].text
		# car_9.test_results = doc.css("td").css("div")[11].text
		# car_9.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-porsche-718-boxster-cayman-page-10"

		# car_10 = self.new
		# doc = Nokogiri::HTML(open(car_10.url))
		# car_10.name = doc.css("h1.mv1").text
		# car_10.price = doc.css("td").css("div")[3].text
		# car_10.engines = doc.css("td").css("div")[5].text
		# car_10.transmission = doc.css("td").css("div")[7].text
		# car_10.fuel_economy = doc.css("td").css("div")[13].text
		# car_10.weight = doc.css("td").css("div")[9].text
		# car_10.test_results = doc.css("td").css("div")[11].text
		# car_10.url = "https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature-volkswagen-golf-alltrack-e-golf-gti-r-sportwagen-page-11"

		# [car_1, car_2]
		# , car_3, car_4, car_5, car_6, car_7, car_8, car_9, car_10]
	end
end