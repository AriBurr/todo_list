class StaticPagesController < ApplicationController
  def home
    @progress = Item.check_progress
  end
end
