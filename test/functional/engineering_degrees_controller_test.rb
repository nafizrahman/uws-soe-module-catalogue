require File.dirname(__FILE__) + '/../test_helper'
require 'engineering_degrees_controller'

# Re-raise errors caught by the controller.
class EngineeringDegreesController; def rescue_action(e) raise e end; end

class EngineeringDegreesControllerTest < Test::Unit::TestCase
  def setup
    @controller = EngineeringDegreesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
