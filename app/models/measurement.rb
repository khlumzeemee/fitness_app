class Measurement < ActiveRecord::Base
  belongs_to :user
  belongs_to :measurement_type
  # attr_accessible :title, :body
end
