class API
    def self.get_title(char_name)
        url="https://rickandmortyapi.com/api/character/?name=#{char_name}"
        uri=URI(url)
        response=Net::HTTP.get(uri)
        
        title=JSON.parse(response)["results"].each do |t|
            Character_info.new(name: t["name"], character_id: t["id"], status: t["status"], species: t["species"], type: t["type"], gender: t["gender"], char_name: char_name) if t["name"] != nil
        end  
    end 
    
    def self.get_info(choice)
        url="https://rickandmortyapi.com/api/character/#{choice.character_id}"
        uri=URI(url)
        response=Net::HTTP.get(uri)

        choice_info = JSON.parse(response)["results"][0]
        choice.status = choice_info[status]
        choice.species = choice_info[species]
        choice.type = choice_info[type]        
        choice.char_name << choice_info
        
    end
end


