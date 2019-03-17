class OfferProcesser
  def self.max_discount_percentage(item)
    all_offers = []
    all_offers << item.offer

    category = item.category
    while category
      all_offers << category.offer
      category = category.parent
    end

    all_offers.compact.max_by {|offer| offer.percentage}.percentage
  end
end

