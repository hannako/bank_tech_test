describe Account do

  subject(:account) {described_class.new}

  it 'has a starting balance of £0' do
    expect(account.balance).to eq 0
  end

  it 'can accept deposits' do
    account.deposit(10)
    expect(account.balance).to eq 10
  end

  it 'can accept withdrawls' do
    account.withdraw(10)
    expect(account.balance).to eq -10
  end

  it 'prints out a statment'
  account.deposit(10)
  account.withdraw(10)
  

end
