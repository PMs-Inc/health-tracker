class Day < ActiveRecord::Base
  has_many :exercises, class_name: "Exercise", foreign_key: "date_id"
  has_many :meals, class_name: "Exercise", foreign_key: "date_id"
  has_many :steps, class_name: "Exercise", foreign_key: "date_id"
  has_one :weight, class_name: "Exercise", foreign_key: "date_id"

  def self.get_days
    all.reduce([]) {|days, i| days << [i.date, i.id]}
  end


end
