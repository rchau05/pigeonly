# encoding: utf-8
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Lead, '.input' do
	it 'returns all user form inputs' do
		# setup
		user_input = create(:user, title: 'Mr.', first_name: 'Rocky', last_name: 'Chau', phone_number: '1234567890', email: 'green@green.com')

	result = Lead.input
		# exercise and verify
		expect(result).to eq [user_input]
	end
end
