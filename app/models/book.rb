class Book < ActiveRecord::Base
    has_many :check_outs
    has_many :users, :through => :check_outs
    belongs_to :library
    
    def self.available
        where(["borrowed = ?", false])
    end

    def available
        CheckOut.find_by(book_id: self.id)
    end

    def self.user_location(user)
        Book.all.select { |book| book.library.location == user.location }
    end



end
