class CLI
    def menu
        puts ""
        puts "EnRicklopedia"
        puts "_____________________"
        puts ""
        puts "Enter Character name to get information or 'exit' to exit"
        puts ""
        @input = gets.strip.downcase
        API.get_name(@input)       
    end    
end
