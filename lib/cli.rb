class CLI  
    
  def run
    welcome
  end 

  def welcome
    puts "Welcome to the ultimate beverage experience!"
  end  

  def drink_selection
    puts "Please select a drink that you would like to learn how to make"
    @input = gets.strip
  end
  
  


end 



