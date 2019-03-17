class OrderItem
  attr_accessor :order, :item, :quantity

  def initialize(order, item, quantity)
    @order = order
    @item = item
    @quantity = quantity
    @order.order_items << self
  end

  def total_price
    quantity * @item.price
  end

  def item_name
    @item.name
  end

  def unit_quantities
    "#{@quantity} #{unit_name}"
  end

  private

  def unit_name
    @item.unit.name
  end
end

