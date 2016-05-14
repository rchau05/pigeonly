class ChangeLeadsTable < ActiveRecord::Migration
  def change

  	change_table :leads do |t|
  		t.rename :title, :encrypted_title
  		t.rename :first_name, :encrypted_first_name
  		t.rename :last_name, :encrypted_last_name
  		t.rename :email, :encrypted_email
  		t.rename :phone_number, :encrypted_phone_number
  	end

  end
end
