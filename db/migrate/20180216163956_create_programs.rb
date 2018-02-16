class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :total_spots
      
      t.timestamps
    end
  end
end
