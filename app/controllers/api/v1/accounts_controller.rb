class Api::V1::AccountsController < ApplicationController

    def index
        accounts = Account.all
        render json: accounts, except: [:created_at, :updated_at] 
    end

    def show
        account = Account.find(params[:id])
        render json: account, except: [:created_at, :updated_at]
        
        contacts = account.contacts
    end

end
