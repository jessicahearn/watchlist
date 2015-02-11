class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :title
      t.integer :program_id
      
      t.belongs_to :program, index: true

      t.timestamps null: false
    end
  end
end
