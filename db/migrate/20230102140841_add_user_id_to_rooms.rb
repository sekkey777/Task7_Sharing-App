class AddUserIdToRooms < ActiveRecord::Migration[6.1]
  def up
    execute 'DELETE FROM rooms;'
    add_reference :rooms, :user, null: false, index: true
  end

  def down
    remove_reference :rooms, :user, index: true
  end
end
