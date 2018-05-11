class RecentActivityList < ApplicationRecord
  belongs_to :course
  belongs_to :student
  belongs_to :cohort
  belongs_to :instructor

end
