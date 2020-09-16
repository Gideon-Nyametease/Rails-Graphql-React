class Contact < ApplicationRecord
  belongs_to :user
  has_many :contact_extra_numbers, :dependent => :destroy
  has_many :contact_extra_emails, :dependent => :destroy
end
