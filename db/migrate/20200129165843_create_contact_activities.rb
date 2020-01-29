class CreateContactActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_activities do |t|
      t.integer :contact_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
