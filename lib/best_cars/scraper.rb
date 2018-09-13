class BestCars::Scraper


  def index_page
  	Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature"))
  end

  def new_from_index_page(car)
  	BestCars::Car.new(
  	  car.css("span").text,
  	  "https://www.caranddriver.com#{car.attribute("href")}"
  		)
  end

  def scrape_cars
  	self.index_page.css(".tenbest2018").css("a")
  end

  def make_cars
  	scrape_cars.each do |car|
  	  new_from_index_page(car)
  	end
  end

  def self.scrape_car_details(car)
  	doc ||= Nokogiri::HTML(open(car.website))
  	specs = doc.css("td").css("div")
  	car.type = specs[1].text
  	car.price = specs[3].text
  	car.engines = specs[5].text
  	car.transmission = specs[7].text
  	car.fuel_economy = specs[13].text
  	car.weight = specs[9].text
  	car.test_results = specs[11].text
  end
end
  