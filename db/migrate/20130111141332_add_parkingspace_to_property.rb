class AddParkingspaceToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :parkingspace, :int
  end
end
