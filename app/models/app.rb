# == Schema Information
#
# Table name: apps
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class App < ActiveRecord::Base
  attr_accessible :name, :content, :user_id

  belongs_to :user

  validates :name, :presence => true
  validates :content, :presence => true
  validates :user_id, :presence => true

  default_scope order: 'apps.updated_at DESC'
end
