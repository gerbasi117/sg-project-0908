class API
    def self.get_name(input)
        url="https://rickandmortyapi.com/api/character/?name=#{input}"
        uri=URI(url)
        response=Net::HTTP.get(uri)
        
        name =JSON.parse(response)
        binding.pry
    end 
    
end
