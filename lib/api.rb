class API


    URL = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"
    
    def find_cocktail
        uri = URI.parse(URL)
        response = Net::HTTP.get(uri)
        response
        data = JSON.parse(response)
        data["drinks"].each do |drink|
         hash = {
             :id => drink["idDrink"], 
             :name => drink["strDrink"], 
             :category => drink["strCategory"], 
             :type => drink["strAlcoholic"], 
             :instructions => drink["strInstructions"]}
              ingredients = [drink["strIngredient1"], drink["strIngredient2"], drink["strIngredient3"], drink["strIngredient4"]]
              

              
        end

        
        
        
        

    end
end  
  

   drinks = API.new.find_cocktail
   puts drinks
   binding.pry
