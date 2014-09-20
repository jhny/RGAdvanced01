class Post < ActiveRecord::Base
  validates :name, :email, :title, :text, :presence => true
end
