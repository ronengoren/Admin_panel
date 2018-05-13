class ActivitiesController < ApplicationController
  def index

    @activities = PublicActivity::Activity.order("created_at desc").last(5)
  end
end
