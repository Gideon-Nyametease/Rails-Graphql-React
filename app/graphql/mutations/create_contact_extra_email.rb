class Mutations::CreateContactExtraEmail < Mutations::BaseMutation
    argument :email, String, required: true
    argument :contact_id, String, required: true

    field :contact_extra_email, Types::ContactExtraEmailType, null: false
    field :errors, [String], null: false

    def resolve(email:, contact_id:)
        contact_extra_email = ContactExtraEmail.new(email: email, contact_id: contact_id)
        if (contact_extra_email.save)
            {
                contact_extra_email: contact_extra_email,
                errors: []
            }
        else
            {
                contact_extra_email: nil,
                errors: contact_extra_email.errors.full_messages
            }
        end
    end
end