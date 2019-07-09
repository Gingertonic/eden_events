class EdenEvents::Scraper 
  def self.scrape_months 
    doc = Nokogiri::HTML(open("https://www.edenproject.com/visit/whats-on"))
    
    months = doc.css("select#edit-date-filter-month option") 
    
    months.each do |m|
       name = m.text
       ref = m.attr("value")
       EdenEvents::Month.new(name, ref)
    end 
  end 
  
  def self.scrape_events(month)
      url = "https://www.edenproject.com/visit/whats-on?date_filter_type=month&date_filter_month=#{month.ref}"
      doc = Nokogiri::HTML(open(url))
      
      events = doc.css("ul.boxes.cf li")
      events.each do |e|
        title = e.css("span.teaser_caption-inner").text.strip
      end 
      # EdenEvents::Event.new("cool event", month)
      # EdenEvents::Event.new("uncool event", month)
  end
end 