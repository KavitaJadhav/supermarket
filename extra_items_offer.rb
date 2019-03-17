require './offer'

class ExtraItemsOffer < Offer

  def initialize(buy_count, get_count)
    @buy_count = buy_count
    @get_count = get_count
  end
end

