class CreateCabs < ActiveRecord::Migration[5.2]
  def change
    create_table :cabs do |t|
      t.string :registration_number
      t.string :no_of_seats
      t.timestamps
    end
  end
end
