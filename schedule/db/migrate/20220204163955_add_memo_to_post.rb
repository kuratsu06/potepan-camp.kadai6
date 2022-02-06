class AddMemoToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :memo, :string
  end
end
