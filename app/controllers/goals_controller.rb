class GoalsController < ApplicationController

    def index 
        goals = Goal.all
        render json: goals
       
    end

    def show
        goal = Goal.find(params[:id])
        render json: goal, status: :ok
    end 

    def create
        goal = Goal.create!(goal_params)
        render json: goal, status: :created
    end

    
    def update
        goal = find_goal
        goal.update!(goal_params)
        render json: goal, status: :accepted
    end 


    def destroy
        goal = find_goal
        goal.destroy
        head :no_content
    end 
    
    private 

    def find_goal
        Goal.find_by(id: params[:id])
    end

    def goal_params
        params.permit(:name_of_goal, :goal_amount)
    end 

end
