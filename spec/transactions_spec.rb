describe Transactions do
  subject(:transactions) {described_class.new}

  it 'begins with an empty statement' do
    expect(transactions.statement).to eq []
  end

  it 'stores the date of a transaction' do
    @time_now = Time.now.strftime("%d/%m/%y")
    transactions.record_transaction(10, 10)
    expect(transactions.statement.first).to be{"#{@time_now}:10||||10"}
  end

  it 'stores a withdrawl as a debit' do
    @time_now = Time.now
    transactions.record_transaction(0, -10)
    expect(transactions.statement.first).to be{"#{@time_now}:||||10||0"}
  end
end
