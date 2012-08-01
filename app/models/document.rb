class Document < ActiveRecord::Base
  attr_accessible :contect, :title, :user_id

  belongs_to :user
end
