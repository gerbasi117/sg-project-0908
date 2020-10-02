class API
    def self.get_name(input)
        url="https://rickandmortyapi.com/api/#{input}/2"
        uri=URI(url)
        response=Net::HTTP.get(uri)
        
        name =JSON.parse(response)["name"].each do |c|
    end 
end
