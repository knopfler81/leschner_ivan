class AddUserIdToFinishedGuitar < ActiveRecord::Migration[5.2]
  def change
    add_column :finished_guitars, :user_id, :integer
  end
end
