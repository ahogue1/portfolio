class BlogController < ApplicationController
  def index
    @title = 'Danger 2.0 Blog'
    @posts = Dir.entries('./app/views/posts').
      select { |f| f.ends_with?('.html.erb') }.
      map { |f|
        id = f.chomp('.html.erb')
        { id: id, title: remove_order(id) }
      }.reverse
  end

  def show
    @title = "Danger 2.0 | #{remove_order(params[:id])}"

    render "posts/#{params[:id]}"
  end

  private

  def remove_order(slug)
    slug[3..-1].titleize
  end
end
