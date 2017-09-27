class AddAudioPathToPosts < ActiveRecord::Migration[5.1]
  def change
    change_table :posts do |t|
      t.string :audio
    end
  end
end
