module Transaction
    def transaction_history
        puts "Enter your A/c no.: "
        acno = gets.chomp

        puts "Enter your pin: "
        pin = gets.chomp.to_i

        @file_path = "#{acno}.txt" 
        @remaining_balance = 0

        if File.exist?(@file_path)
            @lines = File.readlines(@file_path)
            file_pin = @lines[2].chomp
            file_balance = @lines[4].chomp
    
            if file_pin.to_i == pin
                i = 5
                while i < @lines.length
                    puts @lines[i].chomp
                    i +=1
                end 
                puts ""
                puts "your Account balance is #{file_balance}"
            else 
                puts "your pin is wrong"
            end
        else 
            puts "Account Number is wrong"
        end
    end
end




