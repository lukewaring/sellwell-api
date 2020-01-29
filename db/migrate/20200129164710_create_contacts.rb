class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.integer :account_id
      t.string :name
      t.string :title
      t.string :phone
      t.string :email
      t.string :notes

      t.timestamps
    end
  end
end
