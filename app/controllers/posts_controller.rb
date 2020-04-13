class PostsController < InheritedResources::Base
  def index
    @posts = Posts.all
  end

  private

    def post_params
      params.require(:post).permit(:title, :body, :published_at, :user_id)
    end

end
