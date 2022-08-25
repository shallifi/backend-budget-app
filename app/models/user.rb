class User < ApplicationRecord
    has_secure_password

    has_many :goals
    has_many :bills

    validates :name, presence: true, uniqueness: true



end
