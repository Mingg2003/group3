class CreateRecommendations < ActiveRecord::Migration[7.0]
  def change
    create_table :recommendations do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :productid
      t.integer :price
      t.integer :quantity
      t.text :sale
      t.text :trending

      t.timestamps
    end
  end
end
