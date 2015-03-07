class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :dob
      t.string :gender
      t.string :allergies

      t.timestamps null: false
    end
  end
end
