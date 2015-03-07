class AddColumnsToPrescriptions < ActiveRecord::Migration
  def change
  	add_column :prescriptions, :medication, :string
  	add_column :prescriptions, :strength, :string
  	add_column :prescriptions, :directions, :string 
  	add_column :prescriptions, :quantity, :integer
  	add_column :prescriptions, :days_supply, :integer
  	add_column :prescriptions, :doctor, :string
  	add_column :prescriptions, :insurance, :string
  	add_column :prescriptions, :DAW, :integer
  	add_column :prescriptions, :refills, :integer
  	add_column :prescriptions, :wait_time, :string
  	add_column :prescriptions, :control, :integer
  	add_column :prescriptions, :ready_fill, :string
  end
end
