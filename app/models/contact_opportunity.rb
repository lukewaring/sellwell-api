class ContactOpportunity < ApplicationRecord
    belongs_to :contact 
    belongs_to :opportunity
end
