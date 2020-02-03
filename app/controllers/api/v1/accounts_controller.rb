class Api::V1::AccountsController < ApplicationController

    def index
        accounts = Account.all
        render json: accounts, except: [:created_at, :updated_at] 
    end

    def create
        account = Account.create(account_params)
        render json: account, except: [:created_at, :updated_at]
    end

    def update
        account = Account.find(params[:id])
        account.update(account_params)
        render json: account, except: [:created_at, :updated_at]
    end

    def destroy
        account = Account.find(params[:id])
        account.destroy
    end

    def show
        account = Account.find(params[:id])
        render json: account, except: [:created_at, :updated_at]
        
        user = account.user
        contacts = account.contacts
        opportunities = account.opportunities
        activities = account.activities
    end

    private

    def account_params
        params.require(:account).permit(:id, :user_id, :name, :industry, :website, :notes, :contacts, :opportunities, :activities, :user)
    end

end
