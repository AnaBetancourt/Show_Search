class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.text :description
      t.integer :actor_id
      t.integer :tvshow_id

      t.timestamps
    end
  end
end
