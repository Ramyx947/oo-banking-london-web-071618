require 'pry'

class BankAccount

attr_accessor :balance, :status
attr_reader :name


def initialize(name)
  @name = name
  @balance= 1000
  @status = 'open'

end

def name(name)
  @name = name
end
def name
  @name
end

# def balance
#   @balance
# end
# def status
#   @status
# end
def deposit(amount)
@balance = balance + amount
end
def display_balance
 return "Your balance is $#{@balance}."
end
def self.status
  @status
end
def valid?
  if @status == 'open' && balance > 0
    true
  else
    false
  end
  # binding.pry
end

def close_account

    @status = "closed"
end
end

#
# a = BankAccount.new("Kat Dennings")
# a.balance = 0
