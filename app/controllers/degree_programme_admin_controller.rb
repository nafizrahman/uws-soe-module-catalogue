class DegreeProgrammeAdminController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @degree_programme_pages, @degree_programmes = paginate :degree_programmes, :per_page => 10
  end

  def show
    @degree_programme = DegreeProgramme.find(params[:id])
  end

  def new
    @degree_programme = DegreeProgramme.new
  end

  def create
    @degree_programme = DegreeProgramme.new(params[:degree_programme])
    if @degree_programme.save
      flash[:notice] = 'DegreeProgramme was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @degree_programme = DegreeProgramme.find(params[:id])
  end

  def update
    @degree_programme = DegreeProgramme.find(params[:id])
    if @degree_programme.update_attributes(params[:degree_programme])
      flash[:notice] = 'DegreeProgramme was successfully updated.'
      redirect_to :action => 'show', :id => @degree_programme
    else
      render :action => 'edit'
    end
  end

  def destroy
    DegreeProgramme.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
