class AddEditoridToTvShows < ActiveRecord::Migration[6.1]
  def change
    add_column :tv_shows, :editor_id, :integer
  end
end
