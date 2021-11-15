class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :place
      t.integer :price
      t.binary :img
      t.string :hname
      t.string :comment

      t.timestamps
    end
  end
end
