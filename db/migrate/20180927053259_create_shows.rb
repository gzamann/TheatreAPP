class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.integer :time
      t.integer :seats

      t.timestamps
    end
  end
end
