class CreateContactOpportunities < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_opportunities do |t|
      t.integer :contact_id
      t.integer :opportunity_id

      t.timestamps
    end
  end
end
