class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { in: 6..20 }
    
    has_many :posts
    has_many :comments
end
