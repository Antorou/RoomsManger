class ChangePricePerNightToFloatInRooms < ActiveRecord::Migration[7.0]
  def up
    change_column :rooms, :price_per_night, :float
  end

  def down
    change_column :rooms, :price_per_night, :decimal
  end
end
