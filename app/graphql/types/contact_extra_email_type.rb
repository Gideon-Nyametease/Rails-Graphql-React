module Types
  class ContactExtraEmailType < Types::BaseObject
    field :id, ID, null: false
    field :contact_id, Integer, null: false
    field :email, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
