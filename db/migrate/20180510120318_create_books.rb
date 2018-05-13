class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :isbn
      t.decimal :price
      t.boolean :publish_status
      t.references :user, foreign_key: true, index: true
      t.references :category, foreign_key: true, index: true      
      t.timestamps
    end
  end
end
