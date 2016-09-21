require_relative 'transactions'

class Account

  attr_reader :balance
  attr_reader :transactions

  def initialize(transactions: Transactions.new)
    @balance = 0
    @transactions = transactions
  end

  def deposit(amount)
    @balance += amount
    transactions.record_transaction(amount,balance)
  end

  def withdraw(amount)
    @balance -= amount
    transactions.record_transaction(-amount,balance)
  end

  def statement
    transactions.print_statement
  end

end
