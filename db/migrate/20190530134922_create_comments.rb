class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :string
      t.integer :rating
      t.string :comment
      t.string :text
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
