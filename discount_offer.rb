require './offer'

class DiscountOffer < Offer

  attr_accessor :percentage

  def initialize(percentage)
    @percentage = percentage
  end
end

