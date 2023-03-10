class BookmarksController < ApplicationController
  def new
    @newbookmark = Bookmark.new
    @list_for_new_bookmark = List.find(params[:list_id])
  end

  def create
    @newbookmark = Bookmark.new(bookmark_params)
    @list_for_new_bookmark = List.find(params[:list_id])
    @newbookmark.list = @list_for_new_bookmark
    if @newbookmark.save
      redirect_to list_path(@list_for_new_bookmark)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end


  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
