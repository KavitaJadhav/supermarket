require './offer'

class ExtraItemsOffer < Offer
  attr_accessor :buy_count, :get_count

  def initialize(buy_count, get_count)
    @buy_count = buy_count
    @get_count = get_count
  end
end

