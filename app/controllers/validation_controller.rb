class ValidationController < ApplicationController
  
    def create

      validation = Validation.new(
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email],
        phone_number: params[:phone_number]
      )
      
      if validation.save
        render :json => @validations.as_json
      else
        render :json => @validations.errors.full_messages
      :status => unprocessable_entity
      end
end
