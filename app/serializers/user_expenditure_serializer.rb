class UserExpenditureSerializer < ActiveModel::Serializer
attributes :id, :user, :expenditure, :expense_amount, :description

belongs_to :user
belongs_to :expenditure


# def user
#     object.user.username
# end

# def expenditure
#     object.expenditure.type_of_expense
# end


end