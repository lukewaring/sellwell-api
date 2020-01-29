class ContactActivity < ApplicationRecord
    belongs_to :contact 
    belongs_to :activity
end
