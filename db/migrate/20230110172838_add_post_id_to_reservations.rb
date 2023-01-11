class AddPostIdToReservations < ActiveRecord::Migration[6.1]
  def up
    execute 'DELETE FROM reservations;'
    add_reference :reservations, :post, null: false, index: true
  end

  def down
    remove_reference :reservations, :post, index: true
  end
end
