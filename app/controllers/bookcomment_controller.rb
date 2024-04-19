class BookcommentController < ApplicationController
    def create
        @book = Book.find(params[:book_id])
        @comment = current_user.bookcomments.new(bookcomment_params)
        @comment.book_id = book.id
        @comment.save
        redirect_to book_path(@book)
    end       
    
    
    private
    
    def book_params
        params.require(:bookcomment).permit(:comment)
        
    end     
end
