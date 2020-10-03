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
        prompt
    end    

    def prompt
        puts""
        puts"Enter Character id number to view, or a series of id numbers with a ',' between to view multiple, or 'exit' to exit."
        puts""

    end

    def print_info
        Character_info.all.each.with_index(1) do |d, i|
            puts "#{i}, #{d.name}"
        end
    end
end
