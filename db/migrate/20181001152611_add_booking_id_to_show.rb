class AddBookingIdToShow < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :show_id, :integer
  end
end
