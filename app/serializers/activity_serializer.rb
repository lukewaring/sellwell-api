class ActivitySerializer < ActiveModel::Serializer
    attributes :id, :opportunity_id, :name, :date, :notes, :opportunity, :contacts
end
