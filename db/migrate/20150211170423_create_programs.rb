class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :title
      t.text :description
      t.string :format

      t.timestamps null: false
    end
  end
end
