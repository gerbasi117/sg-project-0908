class Character_info
    attr_accessor :name, :input, :character_id
    @@all =[]
   
    def initialize(name: , input: , character_id: )
        @name = name
        @input = input
        @character_id = character_id
        @@all << self
    end

    def self.all
        @@all
    end

   def find_by_name(input)
        self.all.select {|d| d.input == input}
    end
end
