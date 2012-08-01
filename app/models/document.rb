class Document < ActiveRecord::Base
  attr_accessible :contect, :title

  belongs_to :user
end
