class AddEditoridToActors < ActiveRecord::Migration[6.1]
  def change
    add_column :actors, :editor_id, :integer
  end
end
