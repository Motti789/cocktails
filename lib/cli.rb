class CLI  
    
  def run

#    while input != "exit"
    welcome
    puts "Loading please wait..."
    drink_selection
  end 


  def welcome
    puts "Welcome to Motti's Ultimate Beverage Experience!"
  end  

  def drink_selection
    puts "Please select the drink that you would like to learn how to make"
    
    @input = gets.strip
  end
  
  


end 



