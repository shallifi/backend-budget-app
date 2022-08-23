class User < ApplicationRecord
    has_secure_password

    has_many :goals

    validates :name, presence: true, uniqueness: true



end
