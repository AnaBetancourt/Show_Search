class RemoveBirthdayFromCharacters < ActiveRecord::Migration[6.1]
  def change
    remove_column :characters, :birthday, :string
  end
end
