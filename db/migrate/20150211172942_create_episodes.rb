class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.integer :time
      t.integer :part_id
      
      t.belongs_to :part, index: true

      t.timestamps null: false
    end
  end
end
