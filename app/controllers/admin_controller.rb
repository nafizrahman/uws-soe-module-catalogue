class AdminController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @mod_pages, @mods = paginate :mods, :per_page => 10
  end

  def show
    @mod = Mod.find(params[:id])
  end

  def new
    @mod = Mod.new
  end

  def create
    @mod = Mod.new(params[:mod])
    if @mod.save
      flash[:notice] = 'Mod was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @mod = Mod.find(params[:id])
  end

  def update
    @mod = Mod.find(params[:id])
    if @mod.update_attributes(params[:mod])
      flash[:notice] = 'Mod was successfully updated.'
      redirect_to :action => 'show', :id => @mod
    else
      render :action => 'edit'
    end
  end

  def destroy
    Mod.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
  # def my_action
#     # you fetch only the modules with 'engineering' as a title
#     @mods = Module.find(:all, :conditions => ["title = 'engineering'"]
#   end


end
