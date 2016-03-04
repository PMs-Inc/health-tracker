class Weight < ActiveRecord::Base
  validates :date_id, uniqueness: true
  belongs_to :day, class_name: "Day", foreign_key: "date_id"

end
