module Spree
  Spree::BaseHelper.class_eval do

    def display_other_prices(product_or_variant)
      result = []
      product_or_variant.other_prices_in(current_currency).each do |short_title, price|
        result << content_tag(:span, "#{short_title} for #{price.display_price_including_vat_for(current_tax_zone).to_html}", class: 'price selling', itemprop: 'price')
      end
      result.join(tag(:br)).html_safe
    end

  end
end