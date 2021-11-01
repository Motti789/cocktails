class Drinks

    @@all = []

    attr_reader :name, :ingredients, :instructions
    
    def initialize(name, ingredients, instructions)
      @name = name
      @ingredients = ingredients
      @instructions = instructions
      self.save
    end
    
      
    
    def save
      @@all << self
    end

    def self.all
      @@all
    end
    

    def print
      puts "Drink name:".green
      puts  self.name
      puts ""
      puts "List of ingredients:".green
      puts self.ingredients
      puts ""
      puts "Instructions:".green
      puts self.instructions
    end   
end
 
