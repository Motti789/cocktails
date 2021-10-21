class Drinks

    @@all = []

    attr_accessor :name
    
    def initialize(name)
      @name = name
      self.save
    end
      

    def save
      @@all << self
    end

    def self.all
      @@all
    end

  




end