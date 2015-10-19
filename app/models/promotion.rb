class Promotion < ActiveRecord::Base
  def self.search(start_period, end_period)
    Promotion.where("start_period >= ? AND end_period <= ?", start_period, end_period)
  end
end
