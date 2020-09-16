class Mutations::CreateContactExtraNumber < Mutations::BaseMutation
    argument :phone_number, String, required: true
    argument :contact_id, Integer, required: true

    field :contact_extra_number, Types::ContactExtraNumberType, null: false
    field :errors, [String], null: false

    def resolve(contact_id:, phone_number:)
        contact_extra_number = ContactExtraNumber.new(phone_number: phone_number, contact_id: contact_id)
        if (contact_extra_number.save)
            {
                contact_extra_number: contact_extra_number,
                errors: []
            }
        else
            {
                contact_extra_number: nil,
                errors: contact_extra_number.errors.full_messages
            }
        end
    end
end