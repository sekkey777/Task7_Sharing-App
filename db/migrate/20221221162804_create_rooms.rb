class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.string :room_introduction
      t.integer :usage_fee
      t.string :address
      t.string :room_picture

      t.timestamps
    end
  end
end
