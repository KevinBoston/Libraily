class CheckOut < ApplicationRecord
    validates :read_terms, acceptance: true 
    #{ true, message: "You must promise to return this book!" }
    validates :book_id, uniqueness: true
    #{ true, message: "You can't check out a book that someone else already has. How did you get here?" }
    belongs_to :user
    belongs_to :book

    def self.return_message
        "Make sure to bring it back!"
    end

end
  