class CreateTvShows < ActiveRecord::Migration[6.1]
  def change
    create_table :tv_shows do |t|
      t.string :name
      t.datetime :start_date
      t.boolean :currently_airing
      t.datetime :end_date
      t.string :network
      t.integer :user_id

      t.timestamps
    end
  end
end
