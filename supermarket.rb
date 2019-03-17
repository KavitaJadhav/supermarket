require './category'
require './unit'
require './item'
require './order_item'
require './order'
require './customer'

class Supermarket
  def place_order
    produce_category = Category.new('Produce', nil)
    fruits_category = Category.new('Fruits', produce_category)
    veg_category = Category.new('Veg', produce_category)
    dairy_category = Category.new('Dairy', nil)
    milk_category = Category.new('Milk', dairy_category)
    cheese_category = Category.new('Cheese', dairy_category)

    kg_unit = Unit.new('Kilogram')
    lt_unit = Unit.new('Litre')

    apple = Item.new('Apple', 50, fruits_category, kg_unit)
    orange = Item.new('Orange', 80, fruits_category, kg_unit)
    potato = Item.new('Potato', 30, veg_category, kg_unit)
    tomato = Item.new('Tomato', 70, veg_category, kg_unit)
    cow_milk = Item.new('Cow Milk', 50, milk_category, lt_unit)
    gouda = Item.new('Gouda', 80, cheese_category, kg_unit)

    customer = Customer.new('Anish Kumar', 'Sector 14, Gurgaon')
    order = Order.new(customer)

    order_item1 = OrderItem.new(order, apple, 6)
    order_item2 = OrderItem.new(order, orange, 2)
    order_item3 = OrderItem.new(order, potato, 14)
    order_item4 = OrderItem.new(order, tomato, 3)
    order_item5 = OrderItem.new(order, cow_milk, 8)
    order_item6 = OrderItem.new(order, gouda, 2)

    order.print_invoice
  end
end


Supermarket.new.place_order