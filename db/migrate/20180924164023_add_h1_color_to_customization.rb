class AddH1ColorToCustomization < ActiveRecord::Migration[5.2]
  def change
  	add_column :customizations, :primary_color, :string, default: "#AB803E"
  	add_column :customizations, :secondary_color, :string, default: "#E67E22"
  	add_column :customizations, :big_title_color, :string, default: "##141414"
  	add_column :customizations, :navbar_links_color, :string, default: "#CBCBCB"
  	add_column :customizations, :paragraphe_color, :string, default: "#21252A"
  end
end
