class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :location
      t.text :bio
      t.boolean :admin
      t.string :password_digest
      t.string :uid
      t.string :email
    end
  end
end
