class CommentsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @comment = Comment.new(comment_params)
    @comment.event = @event
    @comment.user = current_user

    if @comment.save
      redirect_to event_path(@event)
    else
      render 'events/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :event_id, :content)
  end
end
