class ChangeBirthdayDataType < ActiveRecord::Migration[6.1]
  def change
    change_column :characters, :birthday, :string
  end
end
