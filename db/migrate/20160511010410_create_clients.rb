class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :unit
      t.string :phone_one
      t.string :phone_two
      t.string :email_one
      t.string :email_two

      t.timestamps null: false
    end
  end
end
