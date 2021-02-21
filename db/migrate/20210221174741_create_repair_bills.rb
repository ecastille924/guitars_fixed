class CreateRepairBills < ActiveRecord::Migration[6.1]
  def change
    create_table :repair_bills do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.string :style
      t.boolean :acoustic
      t.boolean :electric

      t.timestamps
    end
  end
end
