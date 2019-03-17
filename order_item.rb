require './offer_processer'
require './utils'

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

  def discounted_price
    if @item.offer.class == ExtraItemsOffer
      discounted_items = @item.offer.discounted_items(@quantity)
      priced_items = @quantity - discounted_items
      priced_items * @item.price
    else
      discount_percentage = OfferProcesser.max_discount_percentage(@item)
      total_price - Utils.percentage(total_price, discount_percentage)
    end
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

