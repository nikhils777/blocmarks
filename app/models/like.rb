class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :blocmark
  validates :user_id, :blocmark_id, presence: true, uniqueness: true
end
