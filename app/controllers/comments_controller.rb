class CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  # Permite crear un comentario asociado a un feature
  def create
    @comment = Comment.new(comment_params)
    @comment.feature_id = params[:feature_id]
    @comment.save
  end

  # Permite construir la data a guardas desde el request
  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end
end
