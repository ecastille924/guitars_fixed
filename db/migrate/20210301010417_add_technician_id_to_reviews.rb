class AddTechnicianIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :technician_id, :integer
  end
end
