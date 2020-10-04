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


# choice_info = JSON.parse(response)["results"][0]
        # title.status = choice_info[status]
        # title.species = choice_info[species]
        # title.type = choice_info[type]
        # choice_info.keys.each do |i|
        #     title.char_attributes << choice_info|i| if (i.include? "char_name")  && choice_info[i] != "" && choice_info[i] != nil 
        #end
        #binding.pry
        #end
#= choice_info[gender]


# final_info=JSON.parse(response)["results"].each do |f|
#     Final_character_info.new(name: f["name"], id: f["id"], status: f["status"], species: f["species"], type: f["type"], gender: f["gender"], char_id: char_id)# if f["id"] != nil
# end
# binding.pry
# end