class ProductionsController < ApplicationController

    # Error messages
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # GET /production
    def index 
        render json: Production.all, status: :ok
    end

    # GET /production/:id
    def show 
        production = find_production
        render json: production
    end

    # CREATE production
    def create
        production = Production.create!(production_params)
        render json: production, status: :created
    end

    def update
        production = find_production
        production.update(production_params)
        render json: production, status: :accepted
    end

    def destroy
        production = find_production
        production.destroy
        head :no_content
    end

    private

    def production_params
        params.permit(:title, :genre, :budget, :image, :director, :ongoing)
    end

    def render_not_found_response
        render json: {error: "Production Not Found"}, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end

    def find_production
        Production.find(params[:id])
    end
end

# resource https://www.youtube.com/watch?time_continue=672&v=evlSdyGoE3s&feature=emb_logo&ab_channel=FISInternal