class BestCars::Scraper


  def index_page
  	Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature"))
  end

  def scrape_cars
  	self.index_page.css(".tenbest2018").css("a")
  end

  # def get_page
  #   Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature"))
  # end

  # def scraped_cars
  #   get_page.css(".small-12")
  # end

  
end
  