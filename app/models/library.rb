class Library < ActiveRecord::Base
  attr_accessible :name, :built_date
  has_and_belongs_to_many :books, join_table: "libraries_books"
end
