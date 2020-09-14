class Contact < ApplicationRecord
  belongs_to :user
  has_many :contact_numbers
  has_many :contact_emails
end
