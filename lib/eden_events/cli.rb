class EdenEvents::CLI 
  def call 
    puts 'Welcome to Eden!'
  end
  
  def get_months
    @months = ['J', 'A', 'S', 'O']
  end
  
  def list_months
    @months.each.with_index(1) do |month, index| 
      puts "#{index}. #{month}" 
    end
  end
end