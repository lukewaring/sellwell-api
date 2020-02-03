class Api::V1::OpportunitiesController < ApplicationController

    def index
        opportunities = Opportunity.all
        render json: opportunities, except: [:created_at, :updated_at] 
    end

    def create
        opportunity = Opportunity.create(opportunity_params)
        render json: opportunity, except: [:created_at, :updated_at]
    end

    def update
        opportunity = Opportunity.find(params[:id])
        opportunity.update(opportunity_params)
        render json: opportunity, except: [:created_at, :updated_at]
    end

    def destroy
        opportunity = Opportunity.find(params[:id])
        opportunity.destroy
    end

    def show
        opportunity = Opportunity.find(params[:id])
        render json: opportunity, except: [:created_at, :updated_at] 
    end

    private

    def opportunity_params
        params.require(:opportunity).permit(:id, :account_id, :name, :open_date, :close_date, :stage, :value, :priority, :notes, :contacts, :activities)
    end

end
