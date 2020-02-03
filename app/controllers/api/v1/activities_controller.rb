class Api::V1::ActivitiesController < ApplicationController

    def index
        activities = Activity.all
        render json: activities, except: [:created_at, :updated_at] 
    end

    def create
        activity = Activity.create(activity_params)
        render json: activity, except: [:created_at, :updated_at]
    end

    def update
        activity = Activity.find(params[:id])
        activity.update(activity_params)
        render json: activity, except: [:created_at, :updated_at]
    end

    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
    end

    def show
        activity = Activity.find(params[:id])
        render json: activity, except: [:created_at, :updated_at] 
    end

    private

    def activity_params
        params.require(:activity).permit(:id, :opportunity_id, :name, :date, :notes, :opportunity, :contacts)
    end

end
