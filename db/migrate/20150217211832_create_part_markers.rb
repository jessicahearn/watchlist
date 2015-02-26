class CreatePartMarkers < ActiveRecord::Migration
  def change
    create_table :part_markers do |t|
      t.integer :program_marker_id
      t.integer :part_id
      
      t.belongs_to :program_marker, index: true
      t.belongs_to :part, index: true

      t.timestamps null: false
    end
  end
end
