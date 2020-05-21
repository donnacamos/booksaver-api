class Api::V1::AuthorsController < ApplicationController
    def index
        @authors = Author.all
        render json: @authors
    end

    def create
        @author = Author.new(author_params)
        if @author.save
          render json: @author
        else
          render json: {error: 'Error creating author'}
        end
      end
  
      def show
        @author = Author.find(params[:id])
        render json: @author
      end
  
      def destroy
        @author = Author.find(params[:id])
        @author.destroy
      end
  
      def update
        @author = Author.find(params[:id])
        @author.update(firstName: params["author"]["firstName"])
        @author.save
        render json: @author
      end
  
      private
  
      def author_params
        params.require(:author).permit(:book_id, :firstName, :lastName)
      end
end
