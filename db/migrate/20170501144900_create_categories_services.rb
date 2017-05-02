class CreateCategoriesServices < ActiveRecord::Migration[5.0]
  def change
    create_table :categories_services, id: false do |t|
      t.integer :category_id
      t.integer :service_id

      t.timestamps
    end
  end
end
