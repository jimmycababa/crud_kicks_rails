# this a wrapper around the db. we can use this to query the db and see what users we have
class User < ApplicationRecord
    # has_secure_password

    # validates :email, presence: true
    # has_many :kicks
end
