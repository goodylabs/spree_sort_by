class AddSortPositiionToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :sort_position, :integer,  :default => 100
  end
end
