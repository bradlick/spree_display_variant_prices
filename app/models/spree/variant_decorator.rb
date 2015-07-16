module Spree
  Spree::Variant.class_eval do

    after_create :set_default_short_title, unless: :is_master?

    def self.showing_prices
      where(show_price: true)
    end

    #TODO: make this more efficient
    def other_prices_in(currency)
      prices = {}
      product.variants.active.showing_prices.each do |variant|
        price = variant.prices.select { |price| price.currency == currency }.first || Spree::Price.new(variant_id: self.id, currency: currency)
        prices[variant.short_title] = price
      end

      return prices
    end

    private

    def set_default_short_title
      update_attributes short_title: 'TEST'
    end

  end
end