class Post < ApplicationRecord
  belongs_to :user
  validates :content, length: { minimum: 10, maximum: 20 }
end
