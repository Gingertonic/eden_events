class EdenEvents::Month
  attr_accessor :name, :events
  @@all = []
   
  def initialize(name)
    @name = name
    save
  end 
 
  def self.all
    EdenEvents::Scraper.scrape_months if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
end 