class Session < ApplicationRecord
    include Visible

    has_many :participants, dependent: :destroy

    validates :title, presence: true, length: { minimum: 10}
    validates :date, presence: true 

end
