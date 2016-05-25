class Application < ActiveRecord::Base
  enum status: [:pending, :accepted, :declined]

  belongs_to :author, class_name: "User"
  references :reviewer
  references :topic
end
