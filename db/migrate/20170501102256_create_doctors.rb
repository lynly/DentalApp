class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.text :first_name
      t.text :last_name
      t.text :gender
      t.text :qualification
      t.text :specialty
      t.text :email
      t.text :password_digest

      t.timestamps
    end
  end
end
