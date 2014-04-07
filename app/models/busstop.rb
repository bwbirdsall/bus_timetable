class Busstop < ActiveRecord::Base
  belongs_to :bus
  belongs_to :stop
end
