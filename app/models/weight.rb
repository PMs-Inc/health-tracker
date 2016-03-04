class Weight < ActiveRecord::Base
  validates :date_id, uniqueness: true
end
