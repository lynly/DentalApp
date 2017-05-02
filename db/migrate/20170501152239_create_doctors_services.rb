class CreateDoctorsServices < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors_services, id: false do |t|
      t.integer :doctor_id
      t.integer :service_id

      t.timestamps
    end
  end
end
