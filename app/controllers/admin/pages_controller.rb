class Admin::PagesController < Admin::ApplicationController
  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      redirect_to admin_pages_path
    else
      render action: 'edit'
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy!
    redirect_to admin_pages_path
  end

  protected
  def page_params
    params.require(:page).permit(:title, :name, :body, :image)
  end
end
