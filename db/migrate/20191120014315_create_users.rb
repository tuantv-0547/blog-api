class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :encrypted_password
      t.string :phone_number
      t.integer :gender, limit: 1
      t.string :avatar

      t.timestamps
    end
  end
end
