class AddContentToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :content, :text_area 
  end
end
