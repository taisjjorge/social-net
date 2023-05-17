class User::CommentsController < UserController

  def create
    f_params = form_params.merge(user: current_user)
        @comment = Comment.new(f_params)
        
        if @comment.save
          @post = @comment.post
          respond_to do |format|
            format.js { render "create" }
            format.html { redirect_to '', notice: 'Comment was successfully created.' }
            format.json {head :no_content}
        end
        else
          format.html { redirect_to user_profile_path, notice: 'Comment was unsuccessfully created.' }
        end
      end

    def destroy
      @comment = Comment.find_by(id: params[:id])
      @post = @comment.post

      if @comment.destroy
          respond_to do |format|
            format.js { render "destroy" }
            format.html { redirect_to '', notice: 'Comment was successfully created.' }
            format.json {head :no_content}
          end
      else
          format.html { redirect_to user_profile_path, notice: 'Comment was unsuccessfully deleted.' }
      end 

    end
  
    private
  
    def form_params
      params.require(:comment).permit(:body, :post_id)
    end
  end