class AddReadAndRepliedToMessage < ActiveRecord::Migration[5.2]
  def change
  	add_column :messages, :read, :boolean, default: false
  	add_column :messages, :replied, :boolean, default: false

  end
end
