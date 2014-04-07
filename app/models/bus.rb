class Bus < ActiveRecord::Base
  belongs_to :line
  has_many :busstops
  has_many :stops, through: :busstops
end
