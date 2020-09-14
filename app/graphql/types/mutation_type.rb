module Types
  class MutationType < Types::BaseObject
   #create user
   field :create_user, mutation: Mutations::CreateUser
  end
end
