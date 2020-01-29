class Api::V1::ContactActivitiesController < ApplicationController

    def index
        contact_activities = ContactActivity.all
        render json: contact_activities, except: [:created_at, :updated_at] 
    end

end
