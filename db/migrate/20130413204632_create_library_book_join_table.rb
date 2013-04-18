class CreateLibraryBookJoinTable < ActiveRecord::Migration
  def change
      create_table :libraries_books, :id => false do |t|
        t.integer :library_id
        t.integer :book_id
      end
  end
end
