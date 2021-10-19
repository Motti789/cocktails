class Drinks

    @@all = []

    attr_accessor :drinks, :ingredients
    
    def initialize

      @@all << self
    end

    def self.all
      @@all
    end



end