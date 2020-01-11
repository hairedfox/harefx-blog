class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.integer :age
      t.string :address
      t.string :favorite_quote
      t.integer :status
      t.string :type
      t.string :password_digest

      t.timestamps
    end
  end
end
