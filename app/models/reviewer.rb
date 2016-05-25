class Reviewer < ActiveRecord::Base
  references :profile, class_name: "User"
  references :topic
  has_many :applications
end
