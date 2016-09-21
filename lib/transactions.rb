class Transactions

attr_reader :statement

  def initialize
    @statement = []
  end


  def record_transaction(amount,balance)
    transaction = {date:'',credit:'',debit:'',balance:''}
    transaction['date'] = Time.now.strftime("%d/%m/%y")
    transaction['balance'] = balance
    if amount >= 0
      transaction['credit']=amount
      transaction['debit']= ''
    else
      transaction['debit']=amount.abs
      transaction['credit']= ''
    end
    @statement << transaction
  end

  def print_statement
    print "||  date  ||credit||debit||balance||"
    print "\n"
    @statement.each do |transaction|
      print "   #{transaction['date']}"
      print "   #{transaction['credit']}"
      print "       #{transaction['debit']}"
      print "       #{transaction['balance']}"
      print "\n"
    end
  end



end
