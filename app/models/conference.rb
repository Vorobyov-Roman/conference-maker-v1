class Conference < ActiveRecord::Base
  has_one :creator
  has_many :topics
end
