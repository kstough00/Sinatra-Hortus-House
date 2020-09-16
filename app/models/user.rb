class User < ActiveRecord::Base
    has_secure_password #adds 5 methods, such as 'authenticate' 'password=' 'password_confirmation'
    has_many :plants
end
