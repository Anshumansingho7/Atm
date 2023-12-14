require_relative "pingenration.rb"
require_relative "withdrawal.rb"
require_relative "deposit.rb"
require_relative "balance.rb"
require_relative "transaction.rb"


class Call
    include PinGenratior
    include Withdrawal
    include Deposit
    include Balance
    include Transaction
end

call = Call.new

puts "1- Create new account
2- Withdraw amount
3- Deposit amount
4- Check balance
5- Transaction history: "

output = gets.chomp.to_i
    
case output
when 1
    call.createnewaccount
when 2
    call.withdrawal
when 3
    call.deposit
when 4
    call.check_balance
when 5
    call.transaction_history
else
    puts "Enter a valid option: 1, 2, 3, 4, 5"
end
    

loop do 
    puts "You Want to continue: "
    permission = gets.chomp
    yes = "y"
    no = "n"

    if permission == yes 
        puts "1- Create new account
2- Withdraw amount
3- Deposit amount
4- Check balance
5- Transaction history: "

        output = gets.chomp.to_i
    
        case output
        when 1
            call.createnewaccount
        when 2
            call.withdrawal
        when 3
            call.deposit
        when 4
            call.check_balance
        when 5
            call.transaction_history
        else
            puts "Enter a valid option: 1, 2, 3, 4, 5"
        end

    elsif permission == no
        break
    else 
        puts "Please Enter (y/n): "
    end
end
