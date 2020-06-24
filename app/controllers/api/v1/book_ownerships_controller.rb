class Api::V1::BookOwnershipsController < ApplicationController

    before_action :set_book_ownership, only: [:show, :update, :destroy]


    def index
      @book_ownerships = BookOwnership.all
  
      render json: @book_ownerships
    end
  
   
    def show
      render json: @book_ownership
    end
  
  
    def create
      @book_ownership = BookOwnership.new(book_ownership_params)
      if @book_ownership.save
        render json: @book_ownership
      else
        render json: {message: @book_ownership.errors }, status: 400
      end
    end
  
  
    def update
      if @book_ownership.update(book_ownership_params)
        render json: @book_ownership
      else
        render json: @book_ownership.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @book_ownership.destroy
    end
  
  
  
    private

    def set_book_ownership
      @book_ownership = BookOwnership.find(params[:id])
    end
  
   
    def book_ownership_params
      params.require(:book_ownership).permit(:book_id, :user_id)
    end
  
end