class CreateStandardMeasurements < ActiveRecord::Migration
  def change
    create_table :standard_measurements do |t|
      t.references :user
      t.date :creation_date
      t.column(:weight, :decimal , :precision => 5, :scale => 2)
      t.column(:body_fat_percentage, :decimal, :precision => 3, :scale => 1) 
      t.column(:muscle_mass, :decimal , :precision => 5, :scale => 2)
      t.column(:water_percentage, :decimal, :precision => 3, :scale => 1)
      t.column(:waist_line, :decimal , :precision => 5, :scale => 2)

      t.timestamps
    end
    add_index :standard_measurements, :user_id
  end
end
