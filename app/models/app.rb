class App < ActiveRecord::Base
  attr_accessible :name, :user_id

  belongs_to :user

  validates :name, :presence => true
end
