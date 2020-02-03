class Activity < ApplicationRecord
    belongs_to :opportunity
    has_many :contact_activities
    has_many :contacts, through: :contact_activities
end
