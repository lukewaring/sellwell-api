class Api::V1::ActivitiesController < ApplicationController

    def index
        activities = Activity.all
        render json: activities, except: [:created_at, :updated_at] 
    end

end
