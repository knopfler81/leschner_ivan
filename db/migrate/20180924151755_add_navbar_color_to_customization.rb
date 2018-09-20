class AddNavbarColorToCustomization < ActiveRecord::Migration[5.2]
  def change
  	add_column :customizations, :navbar_color, :string, default: "#141414"
  end
end
