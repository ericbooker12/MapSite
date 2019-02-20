class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :project_number
      t.float :latitude
      t.float :longitude
      t.string :elevation
      t.string :apn
      t.string :city
      t.string :county
      t.string :zip_code
      t.string :state

      t.timestamps
    end
  end
end
