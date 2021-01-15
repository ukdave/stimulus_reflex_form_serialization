class CommentsReflex < ApplicationReflex
  def add_comment
    @comment = Comment.create(comment_params)
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :message)
  end
end
