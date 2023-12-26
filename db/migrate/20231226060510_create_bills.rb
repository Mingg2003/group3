class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.text :product

      t.timestamps
    end
  end
end
