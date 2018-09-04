class RemoveUserIdFinishedGuitar < ActiveRecord::Migration[5.2]
  def change
  	remove_column :finished_guitars, :user_id
  
  end
end
