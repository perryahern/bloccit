module UsersHelper

  def display_posts
    @user.posts.count > 0 ? "Posts" : "#{@user.name.split[0]} has made no posts yet."
  end

  def display_comments
    @user.comments.count > 0 ? "Comments" : "#{@user.name.split[0]} has made no comments yet."
  end
end
