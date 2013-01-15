class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.string :location
      t.float :rooms
      t.string :string
      t.float :bathrooms
      t.float :mts
      t.float :price
      t.text :description
      t.string :purpose

      t.timestamps
    end
  end
end
