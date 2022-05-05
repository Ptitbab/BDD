class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name

      t.timestamps
    end
  end

  def change
    add_reference :doctors, :city, index: true 
    add_reference :patients, :city, index: true 
    add_reference :appointments, :city, index: true 
  end
end
