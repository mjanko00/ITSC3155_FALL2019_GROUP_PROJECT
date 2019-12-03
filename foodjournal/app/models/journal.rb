class Journal < ApplicationRecord
    belongs_to :user
    
    has_many :motivates, dependent: :destroy
    
    validates :date, presence: true
    validates :meal_type, presence: true
    validates :food_item, presence: true, length: { minimum: 1 }
    validates :serving, presence: true, length: { minimum: 1 }, numericality: { only_integer: true }
    validates :cal, presence: true, length: { minimum: 1 }, numericality: { only_integer: true }
    validates :prot, presence: true, length: { minimum: 1 }, numericality: { only_integer: true }
    validates :carbs, presence: true, length: { minimum: 1 }, numericality: { only_integer: true }
    validates :fats, presence: true, length: { minimum: 1 }, numericality: { only_integer: true }

end
