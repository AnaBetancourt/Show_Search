class RenameUseridToCreatoridInCharacters < ActiveRecord::Migration[6.1]
  def change
    rename_column :characters, :user_id, :creator_id
  end
end
