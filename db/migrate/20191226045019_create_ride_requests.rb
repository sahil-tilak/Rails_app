class CreateRideRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :ride_requests do |t|
      t.timestamps
    end
  end
end
