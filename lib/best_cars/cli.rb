require "open-uri"
require "nokogiri"



class BestCars::CLI

	


	def call
		# puts title
		# puts "10 Best Cars:"
		puts "\n"
		# list_cars
		menu
		# goodbye
	end

	def title
		html = open('https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature')
		doc = Nokogiri::HTML(html)
		doc.css(".mv1").text 
	end

	# def list_cars
	# 	html = open('https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature')
	# 	doc = Nokogiri::HTML(html)
	# 	# doc.css(".small-12").css("span").each do |car| puts car.text end
	# 	# doc.css(".small-12").first.css("span").text
	# 	# 2 doc.css(".small-12")[1].css("span").text
	# 	puts title
	# 	doc.css(".small-12").css("span").each do |car| puts car.text end
	# end

	def menu
		# puts "\n"
		# puts "Enter the number of the car you would like more information on"
		input = nil
		until input == "exit"
		puts "Please enter the number of car you would like more information about, or exit"
		# "Enter a command : \n I accept:\n 1 to 10 \n list \n exit"
		  input = gets.strip.downcase
		  case input
		  when "1"
			puts "More info on Car 1"
		  when "2"
			puts "More info on Car 2"
		  when "3"
			puts "More info on Car 3"
		  when "4"
			puts "More info on Car 4"
		  when "5"
			puts "More info on Car 5"
		  when   "6"
		  	puts "More info on Car 6"
		  when "7"
			puts "More info on Car 7"
		  when "8"
			puts "More info on Car 8"
		  when "9"
			puts "More info on Car 9"
		  when "10"
			puts "More info on Car 10"
		  when "exit"
			puts puts "See you next time!"
		  when input !=(1..10)
		  	puts "Please enter an number between 1 and 10"
		  end
		end
	end

	# def goodbye
	#   puts "See you next time!"
	# end

end
