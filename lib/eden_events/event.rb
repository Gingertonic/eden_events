class EdenEvents::Event
  attr_accessor :name, :month, :url, :key_info
  @@all = []
   
  def initialize(name, month, url)
    @name = name
    @month = month
    @url = url
    @key_info = []
    # notify month about the event
    add_to_month
    save
  end 
  
  def self.all 
    @@all 
  end
  
  def add_to_month
    @month.events << self unless @month.events.include?(self)
  end 
  
  def get_event_details
    EdenEvents::Scraper.scrape_key_info(self) if @key_info.empty?
  end 
  
  def save
    @@all << self
  end
end 