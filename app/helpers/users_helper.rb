module UsersHelper

  def display_posts
    @user.posts.count > 0 ? pluralize(@user.posts.count, 'Post') : "#{@user.name.split[0]} has made no posts yet."
  end

  def display_comments
    @user.comments.count > 0 ? pluralize(@user.comments.count, 'Comment') : "#{@user.name.split[0]} has made no comments yet."
  end

  def display_favorites
    @user.favorites.count > 0 ? pluralize(@user.favorites.count, "Favorite") : "#{@user.name.split[0]} has favorited no posts yet."
  end
end
