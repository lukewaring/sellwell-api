class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :website, :notes, :contacts
end
