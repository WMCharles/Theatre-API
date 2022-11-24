class ProductionsController < ApplicationController

    def index 
        render json: Production.all, status: :ok
    end

    def show 
        production = Production.find_by(id: params[:id])
        if production
            render json: production
        else
            render json: {error: "Production Not Found"}, status: :not_found
        end
    end
end
