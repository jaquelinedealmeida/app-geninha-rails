class Session < ApplicationRecord
    validates :title, presence: true
    validates :timetable, presence: true, length: { minimum: 10}
end
