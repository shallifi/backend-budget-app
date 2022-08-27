class Expenditure < ApplicationRecord

    has_many :user_expenditures
    has_many :users, through: :user_expenditures

end
