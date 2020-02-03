class ContactSerializer < ActiveModel::Serializer
    attributes :id, :account_id, :name, :title, :phone, :email, :notes, :account, :opportunities, :activities
end
