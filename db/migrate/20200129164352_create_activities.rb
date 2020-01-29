class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.integer :opportunity_id
      t.string :name
      t.date :date
      t.string :notes

      t.timestamps
    end
  end
end
