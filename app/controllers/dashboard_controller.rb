class DashboardController < ApplicationController
  before_action :force_json, only: :search

  def index; end

  def search
    @items = Entry.ransack(de_or_ru_or_en_cont: params[:q]).result(distinct: true).limit(5)
  end

  private

  def force_json
    request.format = :json
  end
end
