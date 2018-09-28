class CreateViewers < ActiveRecord::Migration[5.2]
  def change
    create_table :viewers do |t|
      t.string :name
      t.integer :number
      t.integer :age

      t.timestamps
    end
  end
end
