class AddCollectionRefToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :collection, foreign_key: true
  end
end
