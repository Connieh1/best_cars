class BestCars::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.caranddriver.com/features/2018-10best-cars-the-best-cars-for-sale-in-america-today-feature"))
  end
  
end
  