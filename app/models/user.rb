class User < ActiveRecord::Base
    has_secure_password #AR macro-needs bcrypt-adds 5 methods, such as 'authenticate' 'password=' 'password_confirmation', custom setter, salts/hashs pw, giving an unrecognizable string, validates pw
    has_many :plants
end
