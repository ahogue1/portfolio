class BlogController < ApplicationController
  def index
  end

  def show
    render "posts/#{params[:id]}"
  end
end
