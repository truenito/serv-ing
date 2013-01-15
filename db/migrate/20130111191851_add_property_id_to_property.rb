class AddPropertyIdToProperty < ActiveRecord::Migration
  def change
    add_column :pictures, :property_id, :int
  end
end
