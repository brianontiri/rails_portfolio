class CommentsController < ApplicationController
before_action :find_post

def create
  @comment = @post.comments.create(params[:comment].permit(:content))
  @comment.user_id = current_user.id
  @comment.save

if @comment.save
  redirect_to post_path(@post)
else
  render 'new'
end

end

def destroy
end


private

def find_post
  @post = Post.find(params[:post_id])
end

 def find_comment
   @comment = @post.comments.find(params[:id])
 end

end
