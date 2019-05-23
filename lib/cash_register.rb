require "pry"

class CashRegister
  attr_accessor :total, :title, :quantity, :price, :transaction, :transactions, :discount
  
  def initialize(discount=0)  
    @total = 0
    @discount = discount
    @transactions =[]
  end  
  
  def add_item(title,price, quantity =1)

    self.total += price * quantity
      quantity.times do 
        transactions << title
      end
    self.transaction = price * quantity
  end
  
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      trans = self.total * @discount
      trans2 = trans / 100
      self.total -= trans2
      "After the discount, the total comes to $#{self.total}."
    end
  end
  
  
  
  
  
  def items
    @transactions
  end
  
  def void_last_transaction
    
  end
end    
    
    
=begin
 
  def add_item(item, price, quantity = 1)
    item_info = {}
    item_info[:name] = item
    item_info[:price] = price
    item_info[:quantity] = quantity

    @cart << item_info

    @total += price * quantity

  end
  
=end