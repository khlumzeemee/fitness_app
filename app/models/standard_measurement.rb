class StandardMeasurement < ActiveRecord::Base
  belongs_to :user
  attr_accessible :body_fat_percentage, :creation_date, :muscle_mass, :waist_line, :water_percentage, :weight
end
