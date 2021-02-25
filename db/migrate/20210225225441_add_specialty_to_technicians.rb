class AddSpecialtyToTechnicians < ActiveRecord::Migration[6.1]
  def change
    add_column :technicians, :specialty, :text
  end
end
