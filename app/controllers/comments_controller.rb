class CommentsController < ApplicationController

	def create
		@post = Post.find_by(params[:post_id])
		@comment = Comment.new(comment_text: params[:input_post_comment], 
								post_id: params[:input_post_id])
		@comment.save

	end
end
