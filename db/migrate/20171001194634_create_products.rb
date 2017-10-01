class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :short_description
      t.text :long_description
      t.decimal :price
      t.string :type

      t.timestamps
    end
  end
end
