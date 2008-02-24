require File.dirname(__FILE__) + '/../test_helper'
require 'degree_programme_admin_controller'

# Re-raise errors caught by the controller.
class DegreeProgrammeAdminController; def rescue_action(e) raise e end; end

class DegreeProgrammeAdminControllerTest < Test::Unit::TestCase
  fixtures :degree_programmes

  def setup
    @controller = DegreeProgrammeAdminController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_index
    get :index
    assert_response :success
    assert_template 'list'
  end

  def test_list
    get :list

    assert_response :success
    assert_template 'list'

    assert_not_nil assigns(:degree_programmes)
  end

  def test_show
    get :show, :id => 1

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:degree_programme)
    assert assigns(:degree_programme).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:degree_programme)
  end

  def test_create
    num_degree_programmes = DegreeProgramme.count

    post :create, :degree_programme => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_degree_programmes + 1, DegreeProgramme.count
  end

  def test_edit
    get :edit, :id => 1

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:degree_programme)
    assert assigns(:degree_programme).valid?
  end

  def test_update
    post :update, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
  end

  def test_destroy
    assert_not_nil DegreeProgramme.find(1)

    post :destroy, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      DegreeProgramme.find(1)
    }
  end
end
