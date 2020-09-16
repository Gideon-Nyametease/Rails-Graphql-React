class Mutations::UpdateContact < Mutations::BaseMutation
    argument :id, Integer, required: true
    argument :first_name, String, required: false
    argument :last_name, String, required: false
    argument :phone_number, String, required: false
    argument :email, String, required: true
    argument :twitter, String, required: true
    argument :user_id, Integer, required: true

    
    field :contact, Types::ContactType, null: false
    field :errors, [String], null: false

    def resolve(id:,**attributes)
        contact = Contact.find(id)
           
            if contact.update(attributes)
                {
                    contact: contact,
                    errors: []
                }
            else
                {
                    contact: nil,
                    errors: contact.errors.full_messages
                }
            end
        
    end

   
end