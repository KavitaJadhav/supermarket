require './category'
require './unit'
require './item'
require './order_item'
require './order'
require './customer'
require './discount_offer'
require './extra_items_offer'

class Supermarket
  def place_order
    produce_offer = DiscountOffer.new(10)
    fruits_offer = DiscountOffer.new(18)
    veg_offer = DiscountOffer.new(5)
    dairy_offer = DiscountOffer.new(15)
    milk_offer = DiscountOffer.new(20)
    cheese_offer = DiscountOffer.new(20)

    apple_offer = ExtraItemsOffer.new(3, 1)
    potato_offer = ExtraItemsOffer.new(5, 2)
    cow_milk_offer = ExtraItemsOffer.new(3, 1)
    chedder_offer = ExtraItemsOffer.new(2, 1)
    orange_offer = DiscountOffer.new(20)
    tomato_offer = DiscountOffer.new(10)
    soya_milk_offer = DiscountOffer.new(10)
    gouda_offer = DiscountOffer.new(10)

    produce_category = Category.new('Produce', nil, produce_offer)
    fruits_category = Category.new('Fruits', produce_category, fruits_offer)
    veg_category = Category.new('Veg', produce_category, veg_offer)
    dairy_category = Category.new('Dairy', nil, dairy_offer)
    milk_category = Category.new('Milk', dairy_category, milk_offer)
    cheese_category = Category.new('Cheese', dairy_category, cheese_offer)

    kg_unit = Unit.new('Kilogram')
    lt_unit = Unit.new('Litre')

    apple = Item.new('Apple', 50, fruits_category, kg_unit, apple_offer)
    orange = Item.new('Orange', 80, fruits_category, kg_unit, orange_offer)
    potato = Item.new('Potato', 30, veg_category, kg_unit, potato_offer)
    tomato = Item.new('Tomato', 70, veg_category, kg_unit, tomato_offer)
    cow_milk = Item.new('Cow Milk', 50, milk_category, lt_unit, cow_milk_offer)
    gouda = Item.new('Gouda', 80, cheese_category, kg_unit, gouda_offer)

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