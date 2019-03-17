class Item
  attr_accessor :price, :name, :category_id, :unit

  def initialize(name, price, category, unit)
    @name = name
    @category_id = category
    @price = price
    @unit = unit
  end

end

