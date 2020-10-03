class CLI
    def lookup
        puts ""
        puts "EnRicklopedia"
        puts "_____________________"
        puts ""
        puts "Enter Character name to get information or 'exit' to exit"
        puts ""
        @input = gets.strip.downcase
        API.get_title(@input)   
          
        print_info
    end    
    def print_info
        Character_info.all.each.with_index(1) do |d, i|
            puts "#{i}, #{d.name}"
        end
    end
end
