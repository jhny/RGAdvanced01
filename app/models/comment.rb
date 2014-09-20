class Comment < ActiveRecord::Base
  belongs_to :post

  validates :name, :email, :text, :presence => true
end
