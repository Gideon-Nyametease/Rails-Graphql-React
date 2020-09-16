module Types
  class MutationType < Types::BaseObject
   #=== create ======================================
   field :create_user, mutation: Mutations::CreateUser 
   field :create_contact, mutation: Mutations::CreateContact
   field :create_contact_extra_number, mutation: Mutations::CreateContactExtraNumber
   field :create_contact_extra_email, mutation: Mutations::CreateContactExtraEmail
  
  #  ================================================

  # === Update ======================================
  # field :update_user, mutation: Mutations::UpdateUser 
   field :update_contact, mutation: Mutations::UpdateContact
  # field :update_contact_extra_number, mutation: Mutations::UpdateContactExtraNumber
  # field :update_contact_extra_email, mutation: Mutations::UpdateContactExtraEmail
  # =================================================

  # === Delete ======================================
  # field :delete_user, mutation: Mutations::DeleteUser 
  field :delete_contact, mutation: Mutations::DeleteContact
  # field :delete_contact_extra_number, mutation: Mutations::DeleteContactExtraNumber
  # field :delete_contact_extra_email, mutation: Mutations::DeleteContactExtraEmail
  # =================================================
  
  end
end
