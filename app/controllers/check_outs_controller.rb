class CheckOutsController < ApplicationController

    def index
        @user = current_user
        @check_outs = CheckOut.where(["user_id = ?", @user.id])
    end

    def new
        @check_out = CheckOut.new
        @book = Book.find_by(id: params[:book_id])
    end


    def create 
        @check_out = CheckOut.create(check_out_params)
        message = CheckOut.return_message
        @book = Book.find_by(id: params[:book_id])
        if current_user.location == @book.library.location
            @check_out.save
            @book.borrowed = !@book.borrowed
            redirect_to user_path(@check_out.user), flash: {message: message }
        else
            @check_out.destroy
            redirect_to user_path(@check_out.user), flash: {message: "You can't have a book from that library."}
        end
    end

    def destroy
        check_out = CheckOut.find_by(id: params[:id])
        check_out.book.borrowed = false
        message = "#{check_out.book.title} has been returned."
        check_out.destroy
        redirect_to user_path(current_user), flash: {message: message}
    end
    

    private
    def check_out_params
        params.require(:check_out).permit(:id, :user_id, :book_id, :read_terms)
    end

end
