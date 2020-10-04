class Character_info
    attr_accessor :name, :char_name, :character_id, :status, :species, :type, :gender, :origin
    @@all =[]
   
    def initialize(name: , char_name: , character_id: , status: , species: , type: , gender: )
        @name = name        
        @character_id = character_id
        @status = status
        @species = species
        @type = type
        @gender = gender
        @char_name = char_name
        @char_attributes = []
        @@all << self
    end

    def self.all
        @@all
    end

   def self.find_by_name(char_name)
        self.all.select {|d| d.char_name == char_name}
    end
end

# class Final_character_info
#     attr_accessor :name,  :id, :status, :species, :type, :gender, :origin, :char_id#:char_name,
#     @@all =[]
   
#     def initialize(name: , id: , status: , species: , type: , gender: , char_id: ) #char_name:
#         @char_id = char_id
#         @name = name        
#         @id = id
#         @status = status
#         @species = species
#         @type = type
#         @gender = gender
#         @char_attributes = []
#         @@all << self
#     end

#     def self.all
#         @@all
#     end
# end
