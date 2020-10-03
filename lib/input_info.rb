class Character_info
    attr_accessor :name, :input, :character_id, :status, :species, :type, :gender, :origin
    @@all =[]
   
    def initialize(name: , input: , character_id: , status:, species:, type:, gender:, origin:, inputs: )
        @name = name        
        @character_id = character_id
        @status = status
        @species = species
        @type = type
        @gender = gender
        @input = input
        @inputs = []
        @@all << self
    end

    def self.all
        @@all
    end

   def find_by_name(input)
        self.all.select {|d| d.input == input}
    end
end
