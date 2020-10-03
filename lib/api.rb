class API
    def self.get_title(char_name)
        url="https://rickandmortyapi.com/api/character/?name=#{char_name}"
        uri=URI(url)
        response=Net::HTTP.get(uri)
        
        title=JSON.parse(response)["results"].each do |c|
            Character_info.new(name: c["name"], character_id: c["id"], char_name: char_name) if c["name"] != nil
        end  
    end 
    
    #  def self.get_title(character_id)
    #     url="https://rickandmortyapi.com/api/character/#{character_id}"
    #     uri=URI(url)
    #     response=Net::HTTP.get(uri)
    #  end
end
