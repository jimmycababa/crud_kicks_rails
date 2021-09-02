# this is inherting all the methods from active record
class User < ApplicationRecord
  has_many :kicks
end

# class Kick < ApplicationRecord
# end