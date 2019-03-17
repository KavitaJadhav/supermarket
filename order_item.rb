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

      priced_items = @quantity - discounted_items
      priced_items * @item.price
    else
      @quantity * @item.price * (100 - max_discount_percentage) / 100
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

  def discounted_items
    # total /(total_sets) ---> all_sets
    #  all_sets * free_items per set
  (quantity / (@item.offer.buy_count + @item.offer.get_count)) * @item.offer.get_count
  end

  def max_discount_percentage
    all_offers = []
    all_offers << @item.offer

    category = @item.category
    while category
      all_offers << category.offer
      category = category.parent
    end

    all_offers.compact.max_by {|offer| offer.percentage}.percentage
  end
end

