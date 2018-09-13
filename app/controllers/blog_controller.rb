class BlogController < ApplicationController
  def index
    @title = 'Danger 2.0 Blog'
    @posts = Dir.entries('./app/views/posts').
      select { |f| f.ends_with?('.html.erb') }.
      map { |f|
        id = f.chomp('.html.erb')
        { id: id, title: id[3..-1].capitalize }
      }.reverse
  end

  def show
    @title = "Danger 2.0 | #{params[:id].capitalize}"

    render "posts/#{params[:id]}"
  end
end
