class User < ActiveRecord::Base
  has_many :rsvps

  scope :free, -> do 
    joins("LEFT OUTER JOIN rsvps ON rsvps.user_id = users.id")
      .group(:id)
  end
end
