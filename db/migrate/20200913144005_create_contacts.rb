class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :twitter

      t.timestamps
    end
  end
end
