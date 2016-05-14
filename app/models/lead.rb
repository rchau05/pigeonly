# encoding: utf-8
# frozen_string_literal: true

class Lead < ActiveRecord::Base
	key = SecureRandom.random_bytes(32)
	iv = SecureRandom.random_bytes(12)

	attr_encrypted_options.merge!(:encode => true)
	attr_encrypted :title, key: key, iv: iv
	attr_encrypted :first_name, key: key, iv: iv
	attr_encrypted :last_name, key: key, iv: iv
	attr_encrypted :email, key: key, iv: iv
	attr_encrypted :phone_number, key: key, iv: iv

end