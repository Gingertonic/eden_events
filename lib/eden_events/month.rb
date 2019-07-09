class EdenEvents::Month
  attr_accessor :name, :ref, :events
  @@all = []
   
  def initialize(name, ref)
    @name = name
    @ref = ref
    @events = []
    save
  end 
 
  def self.all
    EdenEvents::Scraper.scrape_months if @@all.empty?
    @@all
  end
  
  def get_events
    EdenEvents::Scraper.scrape_events(self) if @events.empty?
  end
  
  def save
    @@all << self
  end
end 