class PagesController < ApplicationController
  def index
    puts "in index method"
    @pages = Page.all # controller interacting with model

    # although we don't code anything, rails automatically grabs this for us
    # rails is going to look for index.html.erb in the views/pages folder
  end

  def show
      # find a page, but we need id
      @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
    # go to folder views/pages/new.html/txt/etc ex
  end

  def create
    @page = Page.new(pages_params)
    # new doesnt write new object to database, whereas create will
    if @page.save
      redirect_to pages_path
    else
      render :new
    end
  end

  def edit
    @page = Page.find(params[:id])

  end

  def update
    @page = Page.find(params[:id])

    if(@page.update(pages_params))
      redirect_to pages_path
    else
      render :edit
    end
  end

  private
  def pages_params
    params.require(:page).permit(:title, :author, :body)
  end
end
