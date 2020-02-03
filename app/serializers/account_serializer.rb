class AccountSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :name, :industry, :website, :notes, :contacts, :opportunities, :activities, :user
end
