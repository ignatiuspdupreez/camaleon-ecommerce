class RemoveEcommerceStockField < ActiveRecord::Migration[5.0]
  def change
    Cama::PostType.where(slug: 'commerce').each do |pt|
      pt.get_field_object('ecommerce_stock').try(:destroy)
    end
  end
end
