class Api::V1::OpportunitiesController < ApplicationController

    def index
        opportunities = Opportunity.all
        render json: opportunities, except: [:created_at, :updated_at] 
    end

end
