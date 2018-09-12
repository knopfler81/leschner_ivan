class CreateProgresses < ActiveRecord::Migration[5.2]
  def change
    create_table :progresses do |t|
      t.string :title
      t.string :description
      t.json :pictures

      t.timestamps
    end
  end
end