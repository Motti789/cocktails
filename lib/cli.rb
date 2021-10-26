class CLI  
    
  def run
    puts "Welcome to Motti's Ultimate Beverage Experience!"
    puts "Loading please wait..."
    sleep(1)
    puts "Thank you for waiting"
    API.get_cocktail
    print_main_menu
   end 

  def print_main_menu
    puts "Press 1 for a complete list of all drinks"
    puts "Type 'exit' to exit program"
    user_input = gets.strip
    if user_input == "exit"
       goodbye
       exit

       elsif user_input == "1"
        print_drinks 
        puts ""
       puts "Which drink would you like to choose? Please choose a number"
       main_menu
       
         else
       user_input != "1"
       invalid_input
       print_main_menu
       end
  end

  def main_menu
    user_input = gets.strip
    

     if user_input == "1"
      drinks = Drinks.all[user_input.to_i - 1]
    
     else user_input == "0"
      
      goodbye
    end
  end
  

     

      
      
      
      
    
    # if user_input == "exit"
    # goodbye
    # exit
    # elsif user_input == "9"
    #  print_drinks 
    #  puts ""
    # puts "Which drink would you like to choose? Please choose a number"
    #  user_input == "1"
    # drink
    
    
    
  
    
  #   def user_selection
  #   user_input = gets.strip
  #   if user_input == "1"
  #   drink = Drinks.all[user_input.to_i - 1]
  #   else user_input == "7"
  #     invalid_input
  #   end
  #  end
   

  def goodbye
    puts "Now leaving the program. Come visit us again next time!"
  end



  def invalid_input
    puts "Invalid command, please try again".red
  end
  



  def drink_selection
    puts "Please select the drink that you would like to learn how to make"
  end

  def print_drinks
    Drinks.all.each.with_index(1) do |drink, index|
      puts ""
      puts "Drink #{index}.".green, "#{drink.name}".green
      # "#{drink.ingredients}", "#{drink.instructions}"
    end
  end

  def selected_drink(drink)
    drink = Drinks.all[user_input.to_i - 1]
  end
  


  

  

  
  

  

  

end 



