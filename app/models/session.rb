class Session < ApplicationRecord

    validates :title, presence: true, length: { minimum: 10}
    validates :date, presence: true 
end
