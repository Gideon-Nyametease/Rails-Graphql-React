module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    #Select Users
    field :users, [Types::UserType], null: false

    #Select Contacts
    field :contacts, [Types::ContactType], null: false

    #Select Contact's extra numbers
    field :contact_extra_numbers, [Types::ContactExtraNumberType], null: false

    #Select Contact's extra emails
    field :contact_extra_emails, [Types::ContactExtraEmailType], null: false

    def users
      User.all
    end

    field :user, Types::UserType, null: false do
        argument :id, ID, required: true
    end

    # === contacts ===
    def contacts
      Contact.all
    end

    field :contact, Types::ContactType, null: false do
        argument :id, ID, required: true
        # argument :user_id, Integer, required: true
    end

     # === contacts extra numbers ===
     def contact_contact_extra_numbers
      ContactExtraNumber.all
    end

    field :contact_extra_number, Types::ContactExtraNumberType, null: false do
        argument :id, ID, required: true
        # argument :contact_id, Integer, required: false
    end

     # === contacts extra emails ===
     def contact_extra_emails
      ContactExtraEmail.all
    end

    field :contact_extra_email, Types::ContactExtraEmailType, null: false do
        argument :id, ID, required: true
        # argument :contact_id, Integer, required: true
    end
   

    # === "Permited Params" but not really ===
    def user(id:)
      User.find(id)
    end

    def contact(id:)
      Contact.find(id)
    end

    def contact_extra_number(id:)
      ContactExtraNumber.find(id)
    end

    def contact_extra_email(id:)
      ContactExtraEmail.find(id)
      # ContactExtraEmail.find(contact_id)

    end
  end
end
