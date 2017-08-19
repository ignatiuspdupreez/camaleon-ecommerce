class AddCookieKeyToCart < ActiveRecord::Migration[5.0]
  def change
    add_column :plugins_ecommerce_orders, :visitor_key, :string
  end
end
