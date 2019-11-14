class Journal < ApplicationRecord
    belongs_to :user
    
    has_many :motivates, dependent: :destroy
    
    validates :meal_type, presence: true
    validates :food_item, presence: true, length: { minimum: 1 }
    validates :serving, presence: true, length: { minimum: 1 }
    validates :cal, presence: true, length: { minimum: 1 }
    validates :prot, presence: true, length: { minimum: 1 }
    validates :carbs, presence: true, length: { minimum: 1 }
    validates :fats, presence: true, length: { minimum: 1 }
end
