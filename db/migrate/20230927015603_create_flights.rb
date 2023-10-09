class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.datetime :start
      t.float :duration

      t.timestamps
    end
  end
end
