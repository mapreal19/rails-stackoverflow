class User < ActiveRecord::Base
  USER_EXTEND_ATTRS = UserExtend.attribute_names

  has_one :user_extend
  delegate *USER_EXTEND_ATTRS, to: :user_extend
end
