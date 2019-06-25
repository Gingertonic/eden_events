class EdenEvents::CLI 
  def call 
    puts "\nWelcome to Eden!\n"
    get_months
    list_months
    get_user_month
  end
  
  def get_months
    @months = ['J', 'A', 'S', 'O']
  end
  
  def list_months
    puts 'Choose a month to see events.'
    @months.each.with_index(1) do |month, index| 
      puts "#{index}. #{month}"
    end
  end
  
  def get_user_month
    chosen_month = gets.strip
    # if valid_input(chosen_month, @months)
    # end
  end 
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end 
end