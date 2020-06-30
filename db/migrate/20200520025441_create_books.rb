class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.belongs_to :user 
      t.string :title
      t.string :author 
      t.string :description

      t.timestamps
    end
  end
end
