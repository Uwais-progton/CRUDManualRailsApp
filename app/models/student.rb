class Student < ApplicationRecord
    #ensures all the fields here are not empty.
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    has_one_attached :image
end

