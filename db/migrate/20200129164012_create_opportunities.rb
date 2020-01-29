class CreateOpportunities < ActiveRecord::Migration[6.0]
  def change
    create_table :opportunities do |t|
      t.integer :account_id
      t.string :name
      t.date :open_date
      t.date :close_date
      t.string :stage
      t.integer :value
      t.string :priority
      t.string :notes

      t.timestamps
    end
  end
end
