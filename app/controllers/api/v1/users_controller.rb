class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at] 
    end

    def create
        user = User.create(user_params)
        if user.valid?
            user = user
            token = JWT.encode({user_id: user.id}, Rails.application.credentials.dig(:secret_key_base), 'HS256') 
            render json: {user: user, token: token}, except: [:created_at, :updated_at]
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user, except: [:created_at, :updated_at]
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    def show
        user = User.find(params[:id])
        render json: user, except: [:created_at, :updated_at]
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

end
