class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.references :user
      t.references :measurement_type

      t.timestamps
    end
    add_index :measurements, :user_id
    add_index :measurements, :measurement_type_id
  end
end
