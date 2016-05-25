class User < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_one :email
  has_many :sent_applications, class_name: "Application", foreign_key: "author_id"
  has_many :talks, foreign_key: "author_id"
  has_many :creators, foreign_key: "profile_id"
  has_many :reviewers, foreign_key: "profile_id"
end
