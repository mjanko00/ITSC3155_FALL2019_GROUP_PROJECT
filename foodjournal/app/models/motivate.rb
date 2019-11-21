class Motivate < ApplicationRecord
    belongs_to :journal
    
    validates :message, presence: true, length: { minimum: 5 }
end
