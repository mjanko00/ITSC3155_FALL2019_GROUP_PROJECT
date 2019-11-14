class Journal < ApplicationRecord
    has_many :motivates , dependent: :destroy
end
