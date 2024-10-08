class PostCommentsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.book_id = @book.id
    comment.save
    redirect_to book_path(@book)
  end
  
  def destroy
    comment = PostComment.find(params[:id])
    comment.destroy
    redirect_to book_path(comment.book_id) # 正しくリダイレクト
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
