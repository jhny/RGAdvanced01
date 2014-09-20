class Post < ActiveRecord::Base
  has_many :comments

  validates :name, :email, :title, :text, :presence => true
end
