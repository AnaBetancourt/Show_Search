class AddEditoridToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :editor_id, :integer
  end
end
