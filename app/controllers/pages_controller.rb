class PagesController < ApplicationController
  def all_works
    @clients = Client.all
    @works = Work.all
  end
end
