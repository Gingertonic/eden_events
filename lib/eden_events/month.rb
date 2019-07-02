class EdenEvents::Month
  @@all = [] 
  attr_accessor :name
  
  def initialize(name)
    @name = name
    save
  end 
 
  def self.all  
    @@all
  end
  
  def save
    @@all << self
  end
end 