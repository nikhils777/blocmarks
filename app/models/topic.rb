class Topic < ActiveRecord::Base
  has_many :blocmarks

  validates :title, length: { minimum: 1}, presence: true, uniqueness: true
end
