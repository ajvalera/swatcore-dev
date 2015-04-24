class SearchController < ApplicationController
  # GET /search
  # POST /search
  def index
    @q = Course.ransack(params[:q])
    @courses = @q.result(distinct: true)#.includes(:professor, :department)
  end
end
