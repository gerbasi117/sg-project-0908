class Character_info
    attr_accessor :name, :status, :species, :type, :gender, :origin
    @@all=[]
   
    def initialize(name: nil, input: nil, status: nil, species: nil, type: nil, gender: nil, origin: nil)
        @name = name
        @input = input
        @status = status
        @species = species
        @type = type
        @gender = gender 
        @origin = origin    
        @@all << self
    end

    def self.all
        @@all
    end
end
