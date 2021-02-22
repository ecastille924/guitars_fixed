class AddReasonForRepairToRepairBills < ActiveRecord::Migration[6.1]
  def change
    add_column :repair_bills, :reason_for_repair, :text
  end
end
