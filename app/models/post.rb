class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: { in: 1..100 }
  validates :body, presence: true, length: { in: 1..1000 }
end
