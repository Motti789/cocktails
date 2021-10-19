class API


    URL = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"
    
    def find_cocktail
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
        data = JSON.parse(response.body)
        data["drinks"].each do  |drink|
        end
        
        
        binding.pry
        

    end
end  
  

  drinks = API.new.find_cocktail
  puts drinks
