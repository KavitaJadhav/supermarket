class Category
  attr_accessor :name, :parent, :offer

  def initialize(name, parent, offer)
    @name = name
    @parent = parent
    @offer = offer
  end
end


