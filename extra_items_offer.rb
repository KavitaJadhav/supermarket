require './offer'

class ExtraItemsOffer < Offer
  attr_accessor :buy_count, :get_count

  def initialize(buy_count, get_count)
    @buy_count = buy_count
    @get_count = get_count
  end

  def discounted_items(quantity)
    # total /(total_sets) ---> all_sets
    #  all_sets * free_items per set
    (quantity / (@buy_count + @get_count)) * @get_count
  end
end

