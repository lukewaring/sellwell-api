class Account < ApplicationRecord
    belongs_to :user
    has_many :contacts
    has_many :opportunities
    has_many :activities, through: :opportunities
end
