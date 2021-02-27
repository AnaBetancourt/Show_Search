class RenameUseridToCreatoridInTvShows < ActiveRecord::Migration[6.1]
  def change
    rename_column :tv_shows, :user_id, :creator_id
  end
end
