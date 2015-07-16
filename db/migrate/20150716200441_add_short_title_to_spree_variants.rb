class AddShortTitleToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :short_title, :string
  end
end
