class Talk < ActiveRecord::Base
  references :author, class_name: "User"
  belongs_to :topic
end
