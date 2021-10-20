class Drinks

    @@all = []

    attr_accessor :name, :category, :type, :instructions, :ingredients
    
    def initialize(name, category, type, instructions, ingredients)
      @name = name
      @category = category
      @type = type
      @instructions = instructions
      @ingredients = ingredients
      self.save
    end
      

    def save
      @@all << self
    end

    def self.all
      @@all
    end



end