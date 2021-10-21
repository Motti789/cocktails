class Instructions

    @@all = []

    attr_accessor  :instruction
    
    def initialize(instruction)
      @instruction = instruction
      self.save
    end
      

    def save
      @@all << self
    end

    def self.all
      @@all
    end



end