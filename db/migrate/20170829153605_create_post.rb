class CreatePost < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :summary
      t.string :content
      t.string :thumbnail
      t.timestamps
    end
  end
end
