class RenameDescriptionToBio < ActiveRecord::Migration[6.1]
  def change
    rename_column :characters, :description, :bio
  end
end
