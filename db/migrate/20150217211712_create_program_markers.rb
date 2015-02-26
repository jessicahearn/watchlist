class CreateProgramMarkers < ActiveRecord::Migration
  def change
    create_table :program_markers do |t|
      t.integer :user_id
      t.integer :program_id
      t.text :notes
      
      t.belongs_to :user, index: true
      t.belongs_to :program, index: true

      t.timestamps null: false
    end
  end
end
