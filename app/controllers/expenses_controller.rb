class ExpensesController < ApplicationController
    
    def index 
        expenses = Expense.all
        render json: expenses
       
    end

    def show
        expense = Expense.find(params[:id])
        render json: expense, status: :ok
    end 

    def create
        expense = Expense.create!(expense_params)
        render json: expense, status: :created
    end

    
    def update
        expense = find_expense
        expense.update!(expense_params)
        render json: expense, status: :accepted
    end 


    def destroy
        expense = find_expense
        expense.destroy
        head :no_content
    end 
    
    private 

    def find_expense
        Expense.find_by(id: params[:id])
    end

    def expense_params
        params.permit(:company_name, :min_payment, :payoff_amount, :payment)
    end 

end
