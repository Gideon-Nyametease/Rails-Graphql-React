module Types
  class ContactType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :phone_number, String, null: true
    field :email, String, null: true
    field :twitter, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
