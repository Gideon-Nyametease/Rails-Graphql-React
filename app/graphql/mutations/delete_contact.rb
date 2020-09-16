class Mutations::DeleteContact < Mutations::BaseMutation
    argument :id, Integer, required: true
   

    
    field :contact, Types::ContactType, null: false
    field :errors, [String], null: false

    def resolve(id:)
        contact = Contact.find(id)
           
        contact.destroy
        {
            contact: contact,
            errors: []
        }
           
    end

   
end