class CreateCustomizations < ActiveRecord::Migration[5.2]
  def change
    create_table :customizations do |t|
    	t.string :main_image
    	t.string :first_section_image
    	t.string :second_section_image
    	t.string :third_section_image
    	t.string :menu_color
    	t.string :body_color
    	t.string :icon_color

      t.timestamps
    end
  end
end
