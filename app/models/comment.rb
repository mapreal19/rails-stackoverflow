class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  scope :recent, -> (count = 2) { 
  rankings = "SELECT id, RANK() OVER(PARTITION BY post_id ORDER BY id DESC) rank FROM comments"
  byebug
  joins("INNER JOIN (#{rankings}) rankings ON rankings.id = comments.id")
    .where("rankings.rank < :count", count: count.next)
    .order(id: "DESC")
  }
end
