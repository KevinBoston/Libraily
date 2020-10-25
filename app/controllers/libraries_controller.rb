class LibrariesController < ApplicationController
    skip_before_action :verified_user, only: [:index]

    def index
        @libraries = Library.user_location(current_user)
    end
    
  
    def new
      @library = Library.new
    end
  
    def create
      if current_user.admin
        @library = Library.create(library_params)
        redirect_to library_path(@library)
      else
        render '/', flash: { message: "Only admins can create Libraries. How can you even see this?" }
      end
    end

    def show
      @library = Library.find(params[:id])
      @books = @library.books.available
      rescue ActiveRecord::RecordNotFound  
        redirect_to '/', flash: {message: "That library doesn't exist."}
      end
    end



    private
    def library_params
        params.require(:library).permit(:name, :location)
    end

end
