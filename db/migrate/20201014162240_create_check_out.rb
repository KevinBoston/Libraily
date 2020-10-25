class CreateCheckOut < ActiveRecord::Migration[6.0]
  def change
    create_table :check_outs do |t|
      t.integer :user_id
      t.integer :book_id
      t.boolean :read_terms
    end
  end
end
