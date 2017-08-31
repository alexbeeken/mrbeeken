class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :summary
      t.string :url
      t.string :thumbnail
      t.datetime :post_date
      t.timestamps
    end
  end
end
