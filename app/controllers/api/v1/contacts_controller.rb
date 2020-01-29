class Api::V1::ContactsController < ApplicationController

    def index
        contacts = Contact.all
        render json: contacts, except: [:created_at, :updated_at] 
    end

end
