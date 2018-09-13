class ChangeDescriptionFormatInProgresses < ActiveRecord::Migration[5.2]
  def change
  	change_column :progresses, :description, :text
  end
end
