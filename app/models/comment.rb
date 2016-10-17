class Comment < ActiveRecord::Base
  
  validates :body, presence: true, length: {minimum: 20}

  belongs_to :user
  belongs_to :product
end
