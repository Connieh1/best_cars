class BestCars::Cars

	def self.carList
	  html = open('https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature')
		doc = Nokogiri::HTML(html)
		# doc.css(".small-12").css("span").each do |car| puts car.text end
		# doc.css(".small-12").first.css("span").text
		# 2 doc.css(".small-12")[1].css("span").text
		# puts title
		doc.css(".small-12").css("span").each do |car| puts car.text end
	end
end