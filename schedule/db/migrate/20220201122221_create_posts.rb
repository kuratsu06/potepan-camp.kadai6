class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.datetime :start_at
      t.datetime :end_at
      t.boolean :all_day
      t.datetime :update_at
      t.string :memo

      t.timestamps
    end
  end
end
