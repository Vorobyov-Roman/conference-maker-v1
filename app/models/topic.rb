class Topic < ActiveRecord::Base
  belongs_to :conference
  has_many :talks
  has_many :reviewers
  has_many :applications
end
