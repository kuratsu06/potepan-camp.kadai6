class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :memo, length: {maximum: 500}
end
