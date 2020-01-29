class Api::V1::AccountsController < ApplicationController

    def index
        accounts = Account.all
        render json: accounts, except: [:created_at, :updated_at] 
    end

end
