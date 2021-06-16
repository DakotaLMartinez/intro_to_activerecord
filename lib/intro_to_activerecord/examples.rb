class Book < ActiveRecord::Base 
  validates :title, :author, presence: true
  validates :title, uniqueness: { scope: [:author], message: "cannot be the same as a previous release by the same author" }
end