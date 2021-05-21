class Wallet
  def initialize(money)
    @wallet = money
  end

  def validate_money(spending_money)
    if @wallet - spending_money >= 0 && spending_money >= 0
      true
    else
      false
    end
  end

  def subtract_money(money)
    @wallet -= money
  end

  def add_money(money)
    @wallet += money
  end

  def print_balance
    puts "Your current balance: $#{@wallet}"
  end
end