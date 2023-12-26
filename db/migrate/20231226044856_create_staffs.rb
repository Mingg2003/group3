class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :name
      t.integer :staffid
      t.integer :phone
      t.references :shift, null: false, foreign_key: true
      t.string :performance
      t.integer :salary
      t.boolean :promotion

      t.timestamps
    end
  end
end
