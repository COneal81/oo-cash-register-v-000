
class CashRegister
  attr_accessor  :items, :price, :discount, :total, :last_transaction

    @@items = []
    @@all = []

  def initialize(discount = 0 )
    @total = 0
    @price = price
    @discount = discount
    @items = []
    @@items << self
    @@all << self
  end

  def self.all
    @@all
  end

  def self.print_all
    @@items.each do |v|
    puts "#{v.items}"
    puts "#{v.price}"
    end
  end

#accepts a title and a price and increases the total
#also accepts an optional quantity
#doesn't forget about the previous total
  def add_item(title, price, quantity = 1)
    self.total += price * quantity 
   quantity.times do 
      items << total
      end
     self.last_transaction = price * quantity 
  end


  def apply_discount
    if discount == 0
      puts "You do not have a discount"
    else
      self.total = (total * ((100 - discount.to_f / 100)).to_i
      puts "After your discount, your total is $#{total}"
    
  end
  
  def void_last_transaction
  #subtracts the last transaction from the total
    self.total = @total -= last_transaction
  end
end
