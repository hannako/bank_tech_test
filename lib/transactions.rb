class Transactions

attr_reader :statement

  def initialize
    @statement = []
  end

  def record_transaction(amount,balance)
    transaction = {date:'',credit:' 0 ',debit:' 0 ',balance:''}
    transaction['date'] = Time.now.strftime("%d/%m/%y")
    transaction['balance'] = balance
    amount > 0 ? transaction['credit']=amount : transaction['debit']= amount.abs
    @statement << transaction
  end

  def print_statement
    print "||  date  ||credit||debit||balance|| \n"
    @statement.each do |transaction|
      print "   #{transaction['date']}"
      print "   #{transaction['credit']}"
      print "       #{transaction['debit']}"
      print "       #{transaction['balance']} \n"
    end
  end

end
