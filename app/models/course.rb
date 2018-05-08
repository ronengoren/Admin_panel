class Course < ApplicationRecord
  has_many :cohorts
  has_many :students
  has_many :instructors



  validates :total_class_hour, numericality: { greater_than: 0,  only_integer: true }



  def name_with_initial
    "#{name}"
  end



end
