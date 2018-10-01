class AddTheatreIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :audis, :theatre_id, :integer
  end
end
