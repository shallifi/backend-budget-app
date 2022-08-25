class BillSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :min_payment, :payoff_amount, :payment
end
