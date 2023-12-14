

module Withdrawal

    def withdrawal
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
                puts "Enter Amount to withdrawal: "
                withdrawal_amount = gets.chomp.to_i
                if withdrawal_amount > file_balance.to_i
                    puts "Insufficent Balance"
                else
                    puts "you witdrawal #{withdrawal_amount}"
                    @remaining_balance = file_balance.to_i - withdrawal_amount
                    @lines[4] = "#{@remaining_balance}\n"
                    puts "Your Account Balance is #{@remaining_balance}"
    
                    File.open("#{acno}.txt","w") do |file|
                        file.puts @lines
                        file.puts "you withdrawal -#{withdrawal_amount}"
                    end
                end    
            else 
                puts "your pin is wrong"
            end
        else 
            puts "Account Number is wrong"
        end
    end
end




