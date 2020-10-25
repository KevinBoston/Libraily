class Library < ActiveRecord::Base
    has_many :books

   def self.user_location(user)
     where(["location = ?", user.location])
   end

        
end
