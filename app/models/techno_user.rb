class TechnoUser < ActiveRecord::Base
  attr_accessible :amount, :name, :user_id, :date_sold

  validates_presence_of :name, :amount, :user_id, :date_sold

end
