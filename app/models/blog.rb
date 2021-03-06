class Blog < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true

  has_many :blog_followings, foreign_key: "blog_id", dependent: :destroy
  has_many :followers, through: :blog_followings

  has_many :songs
end
# == Schema Information
#
# Table name: blogs
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  url        :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

