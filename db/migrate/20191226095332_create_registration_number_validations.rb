class CreateRegistrationNumberValidations < ActiveRecord::Migration[5.2]
  def change
    create_table :registration_number_validations do |t|

      t.timestamps
    end
  end
end
