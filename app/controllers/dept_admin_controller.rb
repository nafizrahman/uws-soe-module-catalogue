class DeptAdminController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @dept_pages, @depts = paginate :depts, :per_page => 10
  end

  def show
    @dept = Dept.find(params[:id])
  end

  def new
    @dept = Dept.new
  end

  def create
    @dept = Dept.new(params[:dept])
    if @dept.save
      flash[:notice] = 'Dept was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @dept = Dept.find(params[:id])
  end

  def update
    @dept = Dept.find(params[:id])
    if @dept.update_attributes(params[:dept])
      flash[:notice] = 'Dept was successfully updated.'
      redirect_to :action => 'show', :id => @dept
    else
      render :action => 'edit'
    end
  end

  def destroy
    Dept.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
