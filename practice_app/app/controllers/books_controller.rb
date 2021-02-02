class BooksController < ApplicationController
  def new
    @diary = Diary.new
  end

  def create
    diary = Diary.new(diary_params)
    diary.save
    redirect_to book_path(diary.id)
  end

  def index
    @diaries = Diary.all
  end

  def read
    @diary = Diary.find(params[:id])
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def update
    diary = Diary.find(params[:id])
    diary.update(diary_params)
    redirect_to book_path(diary.id)
  end

  def destroy
    diary = Diary.find(params[:id])
    diary.destroy
    redirect_to books_path
  end

  private
  def diary_params
    params.require(:diary).permit(:title, :main_text, :image)
  end
end
