class LeadPdf < Prawn::Document

  def initialize(lead)
  	super(top_margin: 70)
    @lead = lead
    text "Your Best Receipt Ever"
    text "Name: #{@lead.first_name} #{@lead.last_name}"  
    text "Email: #{@lead.email}"
    text "Phone Number: #{@lead.phone_number}"
    text "Interest Rate: #{@lead.interest_rate}"
    text "Loan Amount: #{@lead.loan_amount}"
    text "Down Payment: #{@lead.down_payment}"
  end

  # def render
  # 	@pdf.render
  # end

end
