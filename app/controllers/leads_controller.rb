# encoding: utf-8
# frozen_string_literal: true

class LeadsController < ApplicationController
    # attr_encrypted :ssn, key: 'This is a key that is 256 bits!!'

  def index
    @leads = Lead.all
  end


  def new
    @lead = Lead.new
  end

  def create
    # raise lead_params
    @lead = Lead.create(lead_params)
    render :new unless @lead.persisted?
  end

  def show
    @lead = Lead.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = LeadPdf.new(@lead)
        send_data pdf.render, 
        filename: "lead_#{@lead.encrypted_first_name}.pdf",
        type: "application/pdf",
        disposition: "inline"
      end
    end
  end

  def upload
    # Make an object in your bucket for your upload
    obj = S3_BUCKET.objects[params[:file].original_filename]

    # Upload the file
    obj.write(file: params[:file], acl: :public_read)

    # Create an object for the upload
    @upload = Upload.new(url: obj.public_url, name: obj.key)

    # Save the upload
    if @upload.save
      redirect_to uploads_path, success: 'File successfully uploaded'
    else
      flash.now[:notice] = 'There was an error'
      render :new
    end
  end

  def lead_params
    params.require(:lead).permit(:title, :first_name, :last_name, :email, :phone_number, :interest_rate, :down_payment, :loan_amount)
  end
end