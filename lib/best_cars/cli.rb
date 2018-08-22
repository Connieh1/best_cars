require "open-uri"
require "nokogiri"



class BestCars::CLI

	


	def call
		puts title
		# puts "10 Best Cars:"
		# list_cars
	end

	def title
		html = open('https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature')
		doc = Nokogiri::HTML(html)
		doc.css(".mv1").text
	end

	def list_cars
		#scrapes car & driver's list
		# url = https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature
		# html = open('url')
		# doc = Nokogiri::HTML(html)
	end

end
