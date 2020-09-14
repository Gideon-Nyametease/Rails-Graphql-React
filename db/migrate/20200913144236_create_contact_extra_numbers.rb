class CreateContactExtraNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_extra_numbers do |t|
      t.belongs_to :contact, null: false, foreign_key: true
      t.string :phone_number

      t.timestamps
    end
  end
end
