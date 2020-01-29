class Api::V1::ContactOpportunitiesController < ApplicationController

    def index
        contact_opportunities = ContactOpportunity.all
        render json: contact_opportunities, except: [:created_at, :updated_at] 
    end

end
