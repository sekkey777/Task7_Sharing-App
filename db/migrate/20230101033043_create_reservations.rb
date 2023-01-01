class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.datetime :start
      t.datetime :end
      t.string :reserver

      t.timestamps
    end
  end
end
