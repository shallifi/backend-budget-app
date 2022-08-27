class UserExpendituresController < ApplicationController
    def index 
        user_expenditures = UserExpenditure.all
        render json: user_expenditures
       
    end

    def show
        user_expenditure = UserExpenditure.find(params[:id])
        render json: user_expenditure, status: :ok
    end 

    def create
        user_expenditure = UserExpenditure.create!(user_expenditure_params)
        render json: user_expenditure, status: :created
    end

    
    def update
        user_expenditure = find_user_expenditure
        user_expenditure.update!(user_expenditure_params)
        render json: user_expenditure, status: :accepted
    end 


    def destroy
        user_expenditure = find_user_expenditure
        user_expenditure.destroy
        head :no_content
    end 
    
    private 

    def find_user_expenditure
        UserExpenditure.find_by(id: params[:id])
    end

    def user_expenditure_params
        params.permit(:expense_amount, :description, :expenditure_id, :user_id)
    end 


end
