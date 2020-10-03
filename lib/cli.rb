class CLI
    def lookup
        puts ""
        puts "EnRicklopedia"
        puts "_____________________"
        puts ""
        puts "Enter Character name to get information or 'exit' to exit"
        puts ""
        @char_name = gets.strip.downcase
        API.get_title(@char_name)  
        print_info  
        prompt 
        input = gets.strip.downcase
            while input != 'exit' do 
                if input == "char_name"

                    elsif input.to_i > 0 && input.to_i <= Character_info.find_by_name(@char_name).count
                     title = Character_info.find_by_name(@char_name)[input.to_i-1]
                     API.get_title(title) if !title.
                    end
                end    
            end            
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



# title = Character_info.all
#         title.each.with_index(1) do |d, i|
#             puts "#{i}, #{d.name}"









# input = gets.strip.downcase
            # while input != 'exit' do 
            #     if input == "char_name"

            #         elsif input.to_i > 0 && input.to_i <= Character_info.find_by_name(@char_name).count
            #          title = Character_info.find_by_name(@char_name)[input.to_i-1]
            #          API.get_title(title) if !title.
            #         end
            #     end