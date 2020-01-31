class Api::V1::ContactsController < ApplicationController

    def index
        contacts = Contact.all
        render json: contacts, except: [:created_at, :updated_at] 
    end

    def show
        contact = Contact.find(params[:id])
        render json: contact, except: [:created_at, :updated_at] 
    end

end
