class character_info
    @@all=[]
   
    def initialize
        @@all << self
    end

    def self.all
        @@all
    end
end
