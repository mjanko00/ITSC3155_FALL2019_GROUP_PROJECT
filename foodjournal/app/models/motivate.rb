class Motivate < ApplicationRecord
    belongs_to :journal
    
    validates :motivator, presence: true, length: { minimum: 5 }
    validates :message, presence: true, length: { minimum: 5 }
end
