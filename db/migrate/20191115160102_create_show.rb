class CreateShow < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.string :name
      t.integer :rating
      t.integer :episode_id
      t.integer :guest_id
    end
  end
end
