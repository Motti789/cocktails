class Ingredients

    @@all = []

    attr_accessor :ingredient
    
    def initialize(ingredient)
        @ingredient = ingredient
        self.save
    end
      

    def save
      @@all << self
    end

    def self.all
      @@all
    end



end