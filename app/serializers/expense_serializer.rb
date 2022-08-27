class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :food, :gasoline, :savings, :investments, :miscellanous, :description, :expense_amount
end
