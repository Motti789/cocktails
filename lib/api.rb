class API


    URL = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"
    
    def find_cocktail
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
        drink = JSON.parse(response.body)
    end
end  
  

#  drinks = API.new.find_cocktail
#  puts drinks
