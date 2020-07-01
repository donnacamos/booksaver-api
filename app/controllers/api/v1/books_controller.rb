class Api::V1::BooksController < ApplicationController
  before_action :set_book, only: [:show, :update, :destroy]

  def index
    if logged_in?
      @books = current_user.books
      render json: @books, status: 200
    else
      render json: {
        error: "You must log in to view books."
      }
    end
  end

  def show
    render json: @book, status: 200
  end

  def create
    @book = current_user.books.build(book_params)
    if @book.save
      render json: @book, status: :created
    else
      error_resp = {
        error: @book.errors.full_messages.to_sentence
      }
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def update
    if @book.update(book_params)
      render json: @book, status: :ok
    else
      error_resp = {
        error: @book.errors.full_messages.to_sentence
      }
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @book.destroy
      render json:  { data: "Your book was successfully deleted." }, status: :ok
    else
      error_resp = {
        error: "Your book could not be found or deleted."
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :author, :description)
    end
end
