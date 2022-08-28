class UserExpenditure < ApplicationRecord
    belongs_to :user
    belongs_to :expenditure

    # validates :expense_amount, presence: true
end
