class FromUser < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :message, presence: true, length: { maximum: 140 } 
end
