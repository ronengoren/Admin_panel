class Cohort < ApplicationRecord

  include PublicActivity::Model
  tracked owner: ->(controller, model) {controller && controller.current_user}

  belongs_to :course
  belongs_to :user
  has_one :instructor
  has_many :students
  def name_with_initial
    "#{name}"
  end

end
