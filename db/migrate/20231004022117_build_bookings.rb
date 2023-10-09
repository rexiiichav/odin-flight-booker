class BuildBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :passenger, foreign_key: { to_table: :passengers }
    add_reference :bookings, :flight, foreign_key: { to_table: :flights }
    add_reference :flights, :booking, foreign_key: { to_table: :bookings }
    add_reference :passengers, :booking, foreign_key: { to_table: :bookings }
  end
end
