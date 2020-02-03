class Contact < ApplicationRecord
    belongs_to :account
    has_many :contact_opportunities
    has_many :opportunities, through: :contact_opportunities
    has_many :contact_activities
    has_many :activities, through: :contact_activities
end
