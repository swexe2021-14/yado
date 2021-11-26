class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :place
      t.binary :img
      t.string :hname
      t.text :comment
      t.integer :price
      t.string :sptype

      t.timestamps
    end
  end
end
