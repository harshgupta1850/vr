class AddRegistervehicleToParkings < ActiveRecord::Migration[7.1]
  def change
    add_column :parkings, :registervehicle_id, :int
  end
end
