class ExpendituresController < ApplicationController
    def index 
        expenditures = Expenditure.all
        render json: expenditures
       
    end

    def show
        expenditure = Expenditure.find(params[:id])
        render json: expenditure, status: :ok
    end 

    def create
        expenditure = Expenditure.create!(expenditure_params)
        render json: expenditure, status: :created
    end

    
    def update
        expenditure = find_expenditure
        expenditure.update!(expenditure_params)
        render json: expenditure, status: :accepted
    end 


    def destroy
        expenditure = find_expenditure
        expenditure.destroy
        head :no_content
    end 
    
    private 

    def find_expenditure
        Expenditure.find_by(id: params[:id])
    end

    def expenditure_params
        params.permit(:type_of_expense)
    end 


end
