class ProductionsController < ApplicationController

    # GET /production
    def index 
        render json: Production.all, status: :ok
    end

    # GET /production/:id
    def show 
        production = Production.find_by(id: params[:id])
        if production
            render json: production
        else
            render json: {error: "Production Not Found"}, status: :not_found
        end
    end

    # CREATE production
    def create
        production = Production.create(production_params)
        render json: production, status: :created
    end

    def update
        # GET /production/:id
        production = Production.find_by(id: params[:id])
        if production
            # update && render
            production.update(production_params)
            render json: production, status: :accepted
        else
            render json: {error: "Production Not Found"}, status: :not_found
        end

    end

    private
    def production_params
        params.permit(:title, :genre, :budget, :image, :director, :ongoing)
    end
end
