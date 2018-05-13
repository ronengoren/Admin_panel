class Instructor < ApplicationRecord
  include PublicActivity::Model
  tracked owner: ->(controller, model) {controller && controller.current_user}




  belongs_to :course
  belongs_to :user

  validates :age, numericality: { less_than: 150,  only_integer: true }
  validates :salary, numericality: { greater_than: 0,  only_integer: true }
  validates :highest_education, inclusion: { in: %w(HS College Masters PHD),
   message: "%{value} is not valid" }


end
