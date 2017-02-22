class CalendarController < ApplicationController
  def show
    @articles = Article.all
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
