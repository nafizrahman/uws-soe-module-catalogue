class LecturerAdminController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @lecturer_pages, @lecturers = paginate :lecturers, :per_page => 10
  end

  def show
    @lecturer = Lecturer.find(params[:id])
  end

  def new
    @lecturer = Lecturer.new
  end

  def create
    @lecturer = Lecturer.new(params[:lecturer])
    if @lecturer.save
      flash[:notice] = 'Lecturer was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @lecturer = Lecturer.find(params[:id])
  end

  def update
    @lecturer = Lecturer.find(params[:id])
    if @lecturer.update_attributes(params[:lecturer])
      flash[:notice] = 'Lecturer was successfully updated.'
      redirect_to :action => 'show', :id => @lecturer
    else
      render :action => 'edit'
    end
  end

  def destroy
    Lecturer.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
