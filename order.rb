class Order
  attr_accessor :customer, :order_items

  def initialize(customer)
    @customer = customer
    @order_items = []
  end

  def total_amount
    @order_items.map {|order_item| order_item.total_price}.sum
  end

  def print_invoice
    puts "Customer: #{customer.name}"
    puts "Address: #{customer.address}"
    puts ['Item', 'Qty', 'Amount'].join('     ')

    @order_items.each do |order_item|
      puts [order_item.item_name, order_item.unit_quantities, order_item.total_price].join('     ')
    end

    puts "Total amount: #{total_amount}"
  end
end


