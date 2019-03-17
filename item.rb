class Item
  attr_accessor :price, :name, :category, :unit, :offer

  def initialize(name, price, category, unit, offer)
    @name = name
    @category = category
    @price = price
    @unit = unit
    @offer = offer
  end

end

