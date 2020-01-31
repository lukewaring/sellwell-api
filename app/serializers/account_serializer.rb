class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :industry, :website, :notes, :contacts, :opportunities, :activities, :user
end
