class Api::V1::AuthController < ApplicationController
    def login
        user = User.find_by(email: login_params[:email])
        if user && user.authenticate(login_params[:password])
            token = JWT.encode({user_id: user.id}, Rails.application.credentials.dig(:secret_key_base), 'HS256') 
            render json: {user: user, token: token}, except: [:created_at, :updated_at]
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def persist
        if request.headers['Authorization']
            encoded_token = request.headers['Authorization']
            token = JWT.decode(encoded_token, Rails.application.credentials.dig(:secret_key_base))
            user_id = token[0]['user_id']
            user = User.find(user_id)
            render json: user
        end
    end

    private

    def login_params
        params.permit(:email, :password)
    end
end
