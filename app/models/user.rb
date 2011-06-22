class User < ActiveRecord::Base
  acts_as_authentic
  attr_accessible :username, :email, :password, :password_confirmation, :firstname, :lastname, :address_first_line, :address_second_line, :address_town, :address_postcode, :phone_mobile, :phone_landline, :account_type, :status, :range
end
