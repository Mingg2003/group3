class CreateShifts < ActiveRecord::Migration[7.0]
  def change
    create_table :shifts do |t|
      t.text :shift

      t.timestamps
    end
  end
end
