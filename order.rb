class Order
  attr_accessor :customer, :order_items

  def initialize(customer)
    @customer = customer
    @order_items = []
  end

  def print_invoice
    puts "Customer: #{customer.name}"
    puts "Address: #{customer.address}"
    puts ['Item', 'Qty', 'Amount'].join('     ')

    @order_items.each do |order_item|
      puts [order_item.item_name, order_item.unit_quantities, order_item.discounted_price].join('     ')
    end

    puts "Total amount: #{discounted_amount}"
    puts "You saved: #{total_amount} - #{discounted_amount} = #{total_savings}"
  end

  private

  def total_amount
    @total_amount ||= @order_items.map {|order_item| order_item.total_price}.sum
  end

  def discounted_amount
    @discounted_amount ||= @order_items.map {|order_item| order_item.discounted_price}.sum
  end

  def total_savings
    @total_savings ||= total_amount - discounted_amount
  end
end


