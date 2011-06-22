class Gym < ActiveRecord::Base
  has_many :users, :through => :gyms_users
end
