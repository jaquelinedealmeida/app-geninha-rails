class Participant < ApplicationRecord
    include Visible

    belongs_to :session 
end
