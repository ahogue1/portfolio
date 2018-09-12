class BlogController < ApplicationController
  def index
    @title = 'Danger 2.0 Blog'
  end

  def show
    @title = "Danger 2.0 | #{params[:id].capitalize}"

    render "posts/#{params[:id]}"
  end
end
