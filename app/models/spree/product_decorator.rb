module Spree
  Spree::Product.class_eval do
    delegate_belongs_to :master, :other_prices_in
  end
end