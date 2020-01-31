class Api::V1::OpportunitiesController < ApplicationController

    def index
        opportunities = Opportunity.all
        render json: opportunities, except: [:created_at, :updated_at] 
    end

    def show
        opportunity = Opportunity.find(params[:id])
        render json: opportunity, except: [:created_at, :updated_at] 
    end

end
