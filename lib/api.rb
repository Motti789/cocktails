class API


    URL = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"
    
    def self.get_cocktail
        uri = URI.parse(URL)
        response = Net::HTTP.get(uri)
        response
        data = JSON.parse(response)
        data["drinks"].each do |drink|
        
        id = drink["idDrink"], 
        name = drink["strDrink"], 
        # category = drink["strCategory"], 
        # type = drink["strAlcoholic"], 
        instructions = drink["strInstructions"]
        ingredients = drink["strIngredient1"], drink["strIngredient2"], drink["strIngredient3"], drink["strIngredient4"], drink["strIngredient5"], drink["strIngredient6"], drink["strIngredient7"], drink["strIngredient8"], drink["strIngredient9"], drink["strIngredient10"]
        Drinks.new(name, ingredients, instructions)
        end

       
        
        

        
        
        
        

    end
end  


 

   
