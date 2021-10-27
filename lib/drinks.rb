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
end
 
