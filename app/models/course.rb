class Course < ApplicationRecord

  include PublicActivity::Model
  tracked owner: ->(controller, model) {controller && controller.current_user}


  has_many :cohorts
  has_many :students
  has_many :instructors
  belongs_to :user



  validates :total_class_hour, numericality: { greater_than: 0,  only_integer: true }



  def name_with_initial
    "#{name}"
  end



end
