class Exercise < ActiveRecord::Base
  belongs_to :exercise_type
  belongs_to :day, class_name: "Day", foreign_key: "date_id"
  belongs_to :user

end
