class RenameUseridToCreatoridInActors < ActiveRecord::Migration[6.1]
  def change
    rename_column :actors, :user_id, :creator_id
  end
end
