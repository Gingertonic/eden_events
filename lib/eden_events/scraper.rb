class EdenEvents::Scraper 
  def self.scrape_months 
    doc = Nokogiri::HTML(open("https://www.edenproject.com/visit/whats-on"))
    
    months = doc.css("select#edit-date-filter-month option") 
    
    months.each do |m|
       name = m.text
       EdenEvents::Month.new(name)
    end 
  end 
end 