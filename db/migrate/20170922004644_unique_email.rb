class UniqueEmail < ActiveRecord::Migration[5.1]
  def change
    change_table :emails do |t|
      t.change :address, :string, unique: true
    end
  end
end
