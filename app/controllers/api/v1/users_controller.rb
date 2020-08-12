class Api::V1::UsersController < ApplicationController
    before_action :authenticate_user,except: [:create]

    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at] 
    end

    def create
        @user = User.new(user_params)
        
        if @user.save
            render json: @user, status: :created
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    def show
        user = User.find(params[:id])
        render json: user, except: [:created_at, :updated_at] 
    end

    private

    def user_params
        params.permit(:name, :email, :password, :password_confirmation)
    end

end
