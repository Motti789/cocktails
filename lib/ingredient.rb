class Ingredients

    @@all = []

    attr_accessor :ingredients
    
    def initialize(ingredient)
        @ingredients = ingredient
        self.save
    end
      

    def save
      @@all << self
    end

    def self.all
      @@all
    end



end