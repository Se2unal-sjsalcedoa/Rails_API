class BooksController < ApplicationController
    # para GET
    def index
        books = Book.all
        respond_to do |format| 
            format.html {render html: books, status: 200}
            format.json {render json: books, status:200}
        end
    end
    # para POST
    def create
        book = Book.new(params_book)
        if book.save
            respond_to do |format|
                format.json {render json: book, status:200}
            end
        else
            respond_to do |format|
                format.json {render json: book.errors, status: :unprocessable_entity}
            end
        end
    end
    #para SHOW
    def show
        book = Book.find(params[:id])
         respond_to do |format|
            format.json {render json: book.errors, status: :unprocessable_entity}
        end
    end
    def params_book
        params.permit(:name,:year,:available,:code)
       
    end
end
