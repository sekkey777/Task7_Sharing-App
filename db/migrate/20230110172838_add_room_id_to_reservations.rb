class AddRoomIdToReservations < ActiveRecord::Migration[6.1]
  def up
    execute 'DELETE FROM reservations;'
    add_reference :reservations, :room, null: false, index: true
  end

  def down
    remove_reference :reservations, :room, index: true
  end
end
