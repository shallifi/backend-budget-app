class GoalSerializer < ActiveModel::Serializer
  attributes :id, :name_of_goal, :goal_amount, :goal_payment
end
