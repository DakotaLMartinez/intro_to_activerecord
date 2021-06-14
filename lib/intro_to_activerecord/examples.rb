class Book < ActiveRecord::Base 
  validates :title, :author, presence: true
  validates :title, uniqueness: { scope: [:author] }
end