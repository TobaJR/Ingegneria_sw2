class Client < ApplicationRecord
    has_many :invoices

    validates :email,
              format: {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i},
              uniqueness: true,
              confirmation: true
    validates_presence_of :name, :age, :email


end
