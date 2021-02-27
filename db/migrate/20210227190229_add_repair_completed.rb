class AddRepairCompleted < ActiveRecord::Migration[6.1]
  def change
    add_column :repair_bills, :repair_completed, :boolean 
  end
end
