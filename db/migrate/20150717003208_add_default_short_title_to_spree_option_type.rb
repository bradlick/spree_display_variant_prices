class AddDefaultShortTitleToSpreeOptionType < ActiveRecord::Migration
  def change
    add_column :spree_option_types, :default_short_title, :boolean
  end
end
