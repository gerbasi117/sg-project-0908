class CLI
    def menu
        puts ""
        puts "EnRicklopedia"
        puts "_____________________"
        puts ""
        puts "Enter Character name to get information or 'exit' to exit"
        puts ""
        @character_info = gets.strip.downcase
        API.get_name(@character_info)       
    end    
end
