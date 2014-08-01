class Blocmark < ActiveRecord::Base
  has_many :likes
  belongs_to :user
  belongs_to :topic
  validates :user_id, :topic_id, presence: true
  validates :url, length: { minimum: 5}, presence: true
  validates_format_of :url, :with => /A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?z/ix
end
