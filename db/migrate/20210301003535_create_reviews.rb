class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text_field :content
      t.timestamps
    end
  end
end
