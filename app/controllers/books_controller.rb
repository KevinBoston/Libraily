class BooksController < ApplicationController

    def index
        if current_user.admin
            @books = Book.all
        else
            @books = Book.user_location(current_user)
        end
    end

    def show
        
        @book = Book.find(params[:id]) 
        rescue ActiveRecord::RecordNotFound  
            redirect_to '/', flash: {message: "That book doesn't exist."}
        end
    def new
        @book = Book.new
    end


    def create
        #@library = Library.find(params[:library_id])
        @book = Book.create(book_params)
        redirect_to books_path(@book)
    end

    def edit 
        #@library = Library.find_by(id: params[:id])
        @book = Book.build(book_params)
    end

    def update 
        @book = Book.find_by(id: params[:id])
        @book.update(book_params)
        redirect_to book_path(book)
    end
    private
        def book_params
            params.require(:book).permit(:title, :genre, :description, :borrowed, :library_id, :id)
        end
end
