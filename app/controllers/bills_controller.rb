class BillsController < ApplicationController

    def index 
        bills = Bill.all
        render json: bills
       
    end

    def show
        bill = Bill.find(params[:id])
        render json: bill, status: :ok
    end 

    def create
        bill = Bill.create!(bill_params)
        render json: bill, status: :created
    end

    
    def update
        bill = find_bill
        bill.update!(bill_params)
        render json: bill, status: :accepted
    end 


    def destroy
        bill = find_bill
        bill.destroy
        head :no_content
    end 
    
    private 

    def find_bill
        Bill.find_by(id: params[:id])
    end

    def bill_params
        params.permit(:company_name, :min_payment, :payoff_amount, :payment)
    end 

end
