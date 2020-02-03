class OpportunitySerializer < ActiveModel::Serializer
    attributes :id, :account_id, :name, :open_date, :close_date, :stage, :value, :priority, :notes, :account, :contacts, :activities
end
