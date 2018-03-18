class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
       if @comment.save
         redirect_to @comment.customer
       else
         render template: "customers/show"
       end
    end

    def destroy
      @comment = Comment.find(params[:id])
         customer = @comment.customer
         @comment.destroy
         redirect_to customer
    end
    private

   def comment_params
     params.require(:comment).permit(:body, :customer_id, :user_id)
   end

end
