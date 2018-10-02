class AddMovieIdToTicket < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :movie_id, :integer
  end
end