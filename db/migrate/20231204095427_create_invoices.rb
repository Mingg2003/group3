class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :total

      t.timestamps
    end
  end
end
