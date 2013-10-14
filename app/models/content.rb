class Content < ActiveRecord::Base
  attr_accessible :title, :text
  belongs_to :user
end
