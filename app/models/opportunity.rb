class Opportunity < ApplicationRecord
    belongs_to :account
    has_many :activities
    has_many :contact_opportunities
    has_many :contacts, through: :contact_opportunities
end
