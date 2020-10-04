class CLI
    def lookup
        puts ""
        puts "EnRicklopedia"
        puts "_____________________"
        puts ""
        puts "Enter Character name to get information or press 'enter' for list or 'exit' to exit"
        puts ""
        @char_name = gets.strip.downcase
        API.get_title(@char_name)  
        # if @char_name != name
        #     put "Incorrect Input"
        # end
            print_info         
            prompt 
            input = gets.strip.downcase
            #binding.pry
            while input != 'exit' do 
                if input == "char_name"
                    @char_name = gets.strip.downcase
                    API.get_title(@char_name) if Character_info.find_by_name(@char_name).length == 0
                    print_title                              
                  elsif input.to_i > 0 #&& input.to_i <-Character_info.find_by_name(@char_name).count
                    title = Character_info.find_by_name(@char_name)[input.to_i-1]
                      API.get_info(title) if !title.status
                      print_final(title)
                      prompt
                         else 
                             puts "Incorrect Input"
                         end
                      input = gets.strip.downcase                
                 end               
            end

    def prompt
        puts""
        puts"Enter Character id number to view profile, or 'exit' to exit."
        puts""
    end
    
    def print_info
        Character_info.all.each.with_index(1) do |d, i|
            puts "#{i} #{d.name}"    
        end
    end

    def print_final(choice)
        puts "Name Species Type Gender Status"
        puts "#{choice.name} #{choice.species} #{choice.type} #{choice.gender} #{choice.status}"             
    end
end



 #> 0 && input.to_i <= Character_info.find_by_name(@char_name).count
                #          title = Character_info.find_by_name(@char_name)[input.to_i-1]
                #          API.get_title(title) #if 
                #          print_title(title)



                # Final_character_info.all.each.with_index(1) do |f, i|
                #     puts "#{i} #{f.name} #{f.char_id} #{f.status} #{f.species} #{f.type} #{f.gender}"