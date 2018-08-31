class BestCars::Scraper


  def index_page
  	Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature"))
  end

  def scrape_cars
  	self.index_page.css(".tenbest2018").css("a")
  end

  def self.car_list
  	scrape_cars.each.with_index(1) do |car, i| 
      puts "#{i}.  #{car.css("span").text}" 
    end
  end

  # def car_sites
  # 	self.scrape_cars.each do |car| 
  # 	  "#{car.attribute("href")}" 
  # 	end 
  # end

  def make_cars
  	scrape_cars.each do |car|
  	  BestCars::Car.new_from_index_page(car)
  	end
  end
  # def get_page
  #   Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature"))
  # end

  # def scraped_cars
  #   get_page.css(".small-12")
  # end

  
end
  