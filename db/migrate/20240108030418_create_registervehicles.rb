class CreateRegistervehicles < ActiveRecord::Migration[7.1]
  def change
    create_table :registervehicles do |t|
      t.string :name
      t.text :address
      t.integer :phonenumber
      t.integer :vehiclenumber 

      t.timestamps
    end
  end
end
