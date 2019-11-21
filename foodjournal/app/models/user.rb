class User < ApplicationRecord
  has_many :journals
    
    VALID_EMAIL_REGEX = /[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    before_save { self.email = email.downcase }
    
    validates :name,
        presence: true,
        length: { maximum: 20 }
    
    validates :email,
        presence: true,
        length: { maximum: 255 },
        format: { with: VALID_EMAIL_REGEX },
        uniqueness: { case_sensitive: false }
        
    validates :password,
        presence: true,
        length: { minimum: 6 }
        
    has_secure_password
end
