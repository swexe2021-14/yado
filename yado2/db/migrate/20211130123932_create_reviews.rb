class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :rcomment
      t.integer :star
      t.integer :tourist_id
      t.integer :hotel_id

      t.timestamps
    end
  end
end
