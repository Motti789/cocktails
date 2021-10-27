class Drinks

    @@all = []

    attr_accessor :name, :ingredients, :instructions
    
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
      puts "Drink name".bold.green
      puts  self.name
      puts ""
      puts "list of ingredients:".bold.green
      puts self.ingredients
      puts "Instructions:".bold.green
      puts self.instructions
    end
   
end
 
