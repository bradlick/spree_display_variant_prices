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
      option_value = option_values.joins(:option_type)
                         .where(Spree::OptionType.table_name => {default_short_title: true})
                         .select("#{Spree::OptionValue.table_name}.presentation")
                         .first
      update_attributes short_title: option_value.presentation
    end

  end
end