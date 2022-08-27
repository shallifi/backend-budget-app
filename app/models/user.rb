class User < ApplicationRecord
    has_secure_password

    has_many :goals
    has_many :bills
    has_many :user_expenditures
    has_many :expenditures, through: :user_expenditures


    validates :username, presence: true, uniqueness: true



end
