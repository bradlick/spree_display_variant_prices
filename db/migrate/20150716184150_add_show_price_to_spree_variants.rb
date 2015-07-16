class AddShowPriceToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :show_price, :boolean
  end
end
