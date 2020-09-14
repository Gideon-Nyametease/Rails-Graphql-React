class CreateContactExtraEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_extra_emails do |t|
      t.belongs_to :contact, null: false, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
