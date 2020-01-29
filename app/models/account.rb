class Account < ApplicationRecord
    belongs_to :user
    has_many :opportunities
    has_many :contacts
end
