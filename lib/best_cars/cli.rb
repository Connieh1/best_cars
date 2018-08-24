
class BestCars::CLI


	def call
		puts "\n"
		puts "Welcome to The 10 Best Cars of 2018 (as rated by Car and Driver!"
		puts "\n"
		puts "Title : #{title}"
		puts "\n"
		list_cars
		menu
	end

	def title
		html = open('https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature')
		doc = Nokogiri::HTML(html)
		doc.css(".mv1").text 
	end

	def list_cars
		@cars = BestCars::Car.carList
		@cars.each.with_index(1) do |car, i|
		  puts "#{i}. #{car.name}"
		end
	end


	def menu
		puts "\n"
		input = nil
		until input == "exit"
		puts "Please enter the number of car you would like more information about (1-10), list, or exit"
		  input = gets.strip.downcase
		  case input
		  when "1"
		  	puts "\n"
			puts BestCars::Car.scrape_car_1.comp
		  when "2"
		  	puts "\n"
			puts BestCars::Car.scrape_car_2.comp
		  when "3"
		  	puts "\n"
			puts BestCars::Car.scrape_car_3.comp
		  when "4"
		  	puts "\n"
			puts BestCars::Car.scrape_car_4.comp
		  when "5"
		  	puts "\n"
			puts BestCars::Car.scrape_car_5.comp
		  when   "6"
		  	puts "\n"
		    puts BestCars::Car.scrape_car_6.comp
		  when "7"
		  	puts "\n"
			puts BestCars::Car.scrape_car_7.comp
		  when "8"
		  	puts "\n"
			puts BestCars::Car.scrape_car_8.comp
		  when "9"
		  	puts "\n"
			puts BestCars::Car.scrape_car_9.comp
		  when "10"
		  	puts "\n"
			puts BestCars::Car.scrape_car_10.comp
		  when "exit"
		  	puts "\n"
			puts "See you next time!"
			puts "\n"
		  when "list"
		  	puts "\n"
		  	list_cars
		  	puts "\n"
		  end
		end
	end


end



