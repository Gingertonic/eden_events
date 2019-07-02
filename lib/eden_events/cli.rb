class EdenEvents::CLI 
  @@muted="\e[1;31m"
  @@grn="\e[1;32m"
  @@blu="\e[1;34m"
  @@mag="\e[1;35m"
  @@cyn="\e[1;36m"
  @@white="\e[0m"
  
  def call 
    puts "\n#{@@grn}Welcome to Eden!#{@@white}\n"
    get_months
    list_months
    get_user_month
  end
  
  def get_months
    @months = EdenEvents::Month.all
  end
  
  def list_months
    puts 'Choose a month to see events.'
    @months.each.with_index(1) do |month, index| 
      puts "#{index}. #{month.name}"
    end
  end
  
  def get_user_month
    chosen_month = gets.strip.to_i
    show_events_for(chosen_month) if valid_input(chosen_month, @months)
  end 
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end 
  
  def show_events_for(chosen_month)
    month = @months[chosen_month - 1]
    puts "Here are events for #{month.name}"
  end
end