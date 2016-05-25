class Email < ActiveRecord::Base
  references :user
end
