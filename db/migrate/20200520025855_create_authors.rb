class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.integer :book_id
      t.string :firstName
      t.string :lastName

      t.timestamps
    end
  end
end
