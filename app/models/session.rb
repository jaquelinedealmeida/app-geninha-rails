class Session < ApplicationRecord
    has_many :participants

    validates :title, presence: true, length: { minimum: 10}
    validates :date, presence: true 
end
