class Activity < ApplicationRecord
    belongs_to :opportunity
    has_many :contacts, through: :contact_activities
end
