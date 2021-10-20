class Ingredient

    @@all = []

    attr_accessor :drinks, :name 
    
    def initialize(name)
        @name = name
        self.cocktails = []
        self.save
    end
      

    def save
      @@all << self
    end

    def self.all
      @@all
    end



end