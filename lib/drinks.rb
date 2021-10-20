class Drinks

    @@all = []

    attr_accessor 
    
    def initialize

    end
      

    def save
      @@all << self
    end

    def self.all
      @@all
    end



end