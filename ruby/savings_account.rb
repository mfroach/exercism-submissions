module SavingsAccount
  def self.interest_rate(balance)
    if balance < 1000 and balance >= 0
      return 0.5
    elsif balance >= 1000 and balance < 5000
      return 1.621
    elsif balance >= 5000
      return 2.475
    elsif balance < 0
      return 3.213
    end
  end
  def self.annual_balance_update(balance)
    interest = interest_rate(balance)
    return balance + (balance * (interest / 100))
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    balance = current_balance
    counter = 0
    until balance >= desired_balance
      counter += 1
      balance = annual_balance_update(balance)
    end
    return counter
  end
end
