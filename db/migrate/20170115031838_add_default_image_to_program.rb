class AddDefaultImageToProgram < ActiveRecord::Migration
  def change
  	add_column :programs, :default_image, :string
  end
end
