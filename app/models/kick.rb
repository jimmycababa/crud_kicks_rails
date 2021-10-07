class Kick < ApplicationRecord
#   belongs_to :user

  scope :kick_size, -> { where("size > 10") }
end

# > Kick.white.limit(2)
# > user = User.find(1)
# > user.kicks.white.limit(2)

