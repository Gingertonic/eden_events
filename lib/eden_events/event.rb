class EdenEvents::Event
  attr_accessor :name, :month, :url, :key_info
  @@all = []
   
  def initialize(name, month, url)
    @name = name
    @month = month
    @url = url
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
  
  def save
    @@all << self
  end
end 