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
       puts "Which drink would you like to learn how to make? Please choose a number."
       selected_drink
    else
       user_input != "1"
       invalid_input
       print_main_menu
    end
  end


  def selected_drink
    user_input = gets.strip
    
    drink = Drinks.all[user_input.to_i - 1]
     
    case user_input 
    when "1", "2", "3", "4", "5", "6"
    puts ""
    drink.print
    puts""
    print_main_menu
    else
    invalid_input
    selected_drink 
    end
  end


  def goodbye
    puts "Now leaving the program. Come visit us again next time!"
  end


  def invalid_input
    puts "Invalid command, please try again".red
  end
  

  def print_drinks
    puts ""
    Drinks.all.each.with_index(1) do |drink, index|
      puts ""
      puts "Drink #{index}.".green, "#{drink.name}".green
    end
  end
  
end 



