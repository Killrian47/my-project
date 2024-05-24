class CreateCats < ActiveRecord::Migration[7.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :picture
      t.string :origin
      t.string :temperament
      t.text :description

      t.timestamps
    end
  end
end
