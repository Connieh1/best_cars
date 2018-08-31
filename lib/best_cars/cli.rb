
class BestCars::CLI


	def call
	  puts "\n"
	  BestCars::Scraper.new.make_cars
	  puts "Welcome to The 10 Best Cars of 2018 (as rated by Car and Driver)!"
	  puts "\n"
	  #puts "Title : #{title}"
	  puts "\n"
	  start
	end

	def start
	  list_cars
	  puts "\n"
	  puts "What number car would you like more information on? Enter a number 1-10:"
      input = gets.strip
      car = BestCars::Car.find(input.to_i)
      print_car(car)
      puts "\n"
      puts "Would you like information on another car? Enter 'Y' or 'N':"
      input = gets.strip.downcase
      if input == "y"
        start
      elsif input == "n"
        puts "\n"
        puts "Thank you! Have a great day!"
        exit
      else
        puts "\n"
        puts "I don't understand that answer."
        puts "\n"
        start
    end


    end


    def print_car(car)
      puts "\n"
      puts "#{car.name}"
      puts "\n"
      puts "Type:  #{car.type}"
	  puts "Price:  #{car.price}"
	  puts "Engine:  #{car.engine}"
	  puts "Transmission: #{car.transmission}"
	  puts "fuel_economy: #{car.fuel_economy}"
	  puts "weight:  #{car.weight}"
	  puts "test_results:  #{car.test_results}"
    end

	def list_cars
      BestCars::Scraper.new.car_list
	end
end

	# def title
	# 	html = open('https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature')
	# 	doc = Nokogiri::HTML(html)
	# 	doc.css(".mv1").text 
	# end

	# def list_cars
	# 	@cars = BestCars::Car.carList
	# 	@cars.each.with_index(1) do |car, i|
	# 	  puts "#{i}. #{car.name}"
	# 	end
	# end


	# def menu
	# 	puts "\n"
	# 	input = nil
	# 	until input == "exit"
	# 	puts "Please enter the number of car you would like more information about (1-10), list, or exit"
	# 	  input = gets.strip.downcase
	# 	  case input
	# 	  when "1"
	# 	  	puts "\n"
	# 		puts BestCars::Car.scrape_car_1.comp
	# 	  when "2"
	# 	  	puts "\n"
	# 		puts BestCars::Car.scrape_car_2.comp
	# 	  when "3"
	# 	  	puts "\n"
	# 		puts BestCars::Car.scrape_car_3.comp
	# 	  when "4"
	# 	  	puts "\n"
	# 		puts BestCars::Car.scrape_car_4.comp
	# 	  when "5"
	# 	  	puts "\n"
	# 		puts BestCars::Car.scrape_car_5.comp
	# 	  when   "6"
	# 	  	puts "\n"
	# 	    puts BestCars::Car.scrape_car_6.comp
	# 	  when "7"
	# 	  	puts "\n"
	# 		puts BestCars::Car.scrape_car_7.comp
	# 	  when "8"
	# 	  	puts "\n"
	# 		puts BestCars::Car.scrape_car_8.comp
	# 	  when "9"
	# 	  	puts "\n"
	# 		puts BestCars::Car.scrape_car_9.comp
	# 	  when "10"
	# 	  	puts "\n"
	# 		puts BestCars::Car.scrape_car_10.comp
	# 	  when "exit"
	# 	  	puts "\n"
	# 		puts "See you next time!"
	# 		puts "\n"
	# 	  when "list"
	# 	  	puts "\n"
	# 	  	list_cars
	# 	  	puts "\n"
	# 	  end
	# 	end
	# end


# end



