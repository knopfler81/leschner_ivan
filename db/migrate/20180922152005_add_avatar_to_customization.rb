class AddAvatarToCustomization < ActiveRecord::Migration[5.2]
  def change
  	add_column :customizations, :avatar , :string
  end
end
