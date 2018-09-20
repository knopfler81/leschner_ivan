class AddBackgroundColorToCustomization < ActiveRecord::Migration[5.2]
  def change
  	add_column :customizations, :background_color , :string, default: "#E2E2E2"
  end
end
