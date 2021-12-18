class EntriesController < ApplicationController
  def index
    @entries = Entry.all#.order(de: :asc)
#    render json: { entries: @entries }
  end
end
