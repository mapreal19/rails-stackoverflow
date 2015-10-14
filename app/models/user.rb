class User < ActiveRecord::Base
  has_and_belongs_to_many :items, join_table: "users_items"
end
