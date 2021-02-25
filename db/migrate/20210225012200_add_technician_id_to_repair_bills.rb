class AddTechnicianIdToRepairBills < ActiveRecord::Migration[6.1]
  def change
    add_column :repair_bills, :technician_id, :integer
  end
end
