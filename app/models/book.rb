class Book < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :libraries, join_table: "libraries_books"
end
