class User < ApplicationRecord
    has_many :accounts
    has_secure_password

    validates :email, uniqueness: true
end
