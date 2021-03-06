class HomesController < ApplicationController
  def top
    @book = Book.new
  end

  def index
    @books = Book.all
  end
  
  def create
    # １. データを新規登録するためのインスタンス作成
    book = Book.new(book_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    book.save
    # ３. トップ画面へリダイレクト
    redirect_to '/top'
    
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
