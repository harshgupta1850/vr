class CreateParkings < ActiveRecord::Migration[7.1]
  def change
    create_table :parkings do |t|
      t.datetime :entrytime
      t.datetime :exittime
      t.integer :phonenumber
      t.integer :vehiclenumber 

      t.timestamps
    end
  end
end
