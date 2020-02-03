class Api::V1::ContactsController < ApplicationController

    def index
        contacts = Contact.all
        render json: contacts, except: [:created_at, :updated_at] 
    end

    def create
        contact = Contact.create(contact_params)
        render json: contact, except: [:created_at, :updated_at]
    end

    def update
        contact = Contact.find(params[:id])
        contact.update(contact_params)
        render json: contact, except: [:created_at, :updated_at]
    end

    def destroy
        contact = Contact.find(params[:id])
        contact.destroy
    end

    def show
        contact = Contact.find(params[:id])
        render json: contact, except: [:created_at, :updated_at]

        account = contact.account
        opportunities = contact.opportunities
        activities = contact.activities
    end

    private

    def contact_params
        params.require(:contact).permit(:id, :account_id, :name, :title, :phone, :email, :notes, :account, :opportunities, :activities)
    end

end
