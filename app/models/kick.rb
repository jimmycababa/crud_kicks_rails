class Kick < ApplicationRecord
#   belongs_to :user

  scope :white, -> { where(color: "white") }
end

# > Kick.white.limit(2)
# > user = User.find(1)
# > user.kicks.white.limit(2)

