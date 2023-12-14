module PinGenratior
    
    def createnewaccount
        #accountnumber = []
        #balanceamount = []
        #pinnumber = []
        #transactionhistory = []
        #nameaccount =[]
        puts "Enter Your Name: "
        name = gets.chomp
        puts "Enter Your Pin: "
        pin = gets.chomp
        puts "Enter opening Balance: "
        balance = gets.chomp
        acno = rand(1000000..9999999)
        #def accountnumber
        #    ac_no. = nil
        #    puts ac_no
        #end
        puts "Hello #{name}"
        puts "your account number is #{acno}"
        puts "your atm pin is #{pin}"
        file = File.new("#{acno}.txt", "w")
        file.puts "Name: #{name}"
        file.puts "A/c no: #{acno}"
        file.puts pin
        file.puts "balance"
        file.puts balance
        file.puts "you Deposit +#{balance}"
        file.close

        #accountnumber.push(acno)
        #pinnumber.push(pin)
        #balanceamount.push(balance)
        #nameaccount.push(name)
    end
end
