
class BestCars::CLI


	def call
	  puts "\n"
	  BestCars::Scraper.new.make_cars
	  puts "Welcome to The 10 Best Cars of 2018 (as rated by Car and Driver)!"
	  puts "\n"
	  list_cars
	  start
	end

	def start
	  # list_cars
	  puts "\n"
	  puts "What number car would you like more information on? Enter a number 1-10 or exit:"
      input = gets.strip
      if input.to_i >= 1 && input.to_i <= 10
      car = BestCars::Car.find(input.to_i)
      if !car.price
      	BestCars::Scraper.scrape_car_details(car)
      end
      print_car(car)
	  elsif input == "exit"
	  	exit
  	  else
  	  	puts "\n"
  	  	puts "I don't uderstand that answer."
  	  	start
  	  end
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
      puts "----------------------------------"
      puts "Type:  #{car.type}"
	  puts "Price:  #{car.price}"
	  puts "Engines:  #{car.engines}"
	  puts "Transmission: #{car.transmission}"
	  puts "fuel_economy: #{car.fuel_economy}"
	  puts "weight:  #{car.weight}"
	  puts "test_results:  #{car.test_results}"
	  puts "website:  #{car.website}"
    end

	def list_cars
      BestCars::Car.all.each.with_index(1) do |car, i| 
      	puts "#{i}. #{car.name}" 
      end
	end
end

	