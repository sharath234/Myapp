class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :role
      t.string :designation
      t.string :address
      t.string :street
      t.string :city
      t.string :pincode
  

      t.timestamps
    end
  end
end
