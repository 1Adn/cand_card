class PagesController < ApplicationController
  def home
    @questionCard1 = QuestionCard.find_by_id(1)
  end
end
