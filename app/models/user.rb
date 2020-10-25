class User < ActiveRecord::Base
    has_secure_password
    validates :username, :presence => true
    validates :username, :uniqueness => true
    has_many :check_outs
    has_many :books, :through => :check_outs

    def name
        if first_name && last_name
            first_name + " " + last_name
        end
    end

    def self.find_or_create_by_omniauth(auth)
        user = User.find_by(uid: auth['uid'])

        if user.nil?
            user = User.create(email: auth['info']['email'], username: auth['info']['nickname'], password: SecureRandom.hex, uid: auth['uid'])
        elsif user.uid.nil?
            user.update(uid: auth['uid'])
        end 
        user 
    end 
end
