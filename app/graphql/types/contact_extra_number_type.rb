module Types
  class ContactExtraNumberType < Types::BaseObject
    field :id, ID, null: false
    field :contact_id, Integer, null: false
    field :phone_number, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
