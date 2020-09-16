module Types
  class ContactType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :phone_number, String, null: true
    field :email, String, null: true
    field :twitter, String, null: true
    field :contact_extra_numbers, [Types::ContactExtraNumberType], null: true
    field :contact_extra_emails, [Types::ContactExtraEmailType], null: true
    field :contact_number_count, Integer, null: true
    field :contact_email_count, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def contact_number_count
      object.contact_extra_numbers.size
    end
    def contact_email_count
      object.contact_extra_emails.size
    end
  end
end
