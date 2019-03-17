class Item
  attr_accessor :price, :name, :category_id, :unit, :offer

  def initialize(name, price, category, unit, offer)
    @name = name
    @category_id = category
    @price = price
    @unit = unit
    @offer = offer
  end

end

