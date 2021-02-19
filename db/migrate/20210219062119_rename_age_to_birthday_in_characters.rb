class RenameAgeToBirthdayInCharacters < ActiveRecord::Migration[6.1]
  def change
    rename_column :characters, :age, :birthday
  end
end
