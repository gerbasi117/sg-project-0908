class API
    def self.get_title(input)
        url="https://rickandmortyapi.com/api/character/?name=#{input}"
        uri=URI(url)
        response=Net::HTTP.get(uri)
        
        title=JSON.parse(response)["results"].each do |c|
            Character_info.new(name: c["name"], character_id: c["id"], input: input) if c["name"] != nil
        end       
    end   
    def self.get_title(title)
        url="https://rickandmortyapi.com/api/character/#{character_id}"
        uri=URI(url)
        response=Net::HTTP.get(uri)
        character_id_2 = JSON.parse(response)["results"] 
    end

end
