class Creator < ActiveRecord::Base
  references :profile, class_name: "User"
  references :conference
end
