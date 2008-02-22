require File.dirname(__FILE__) + '/../test_helper'
require 'modbook_controller'

# Re-raise errors caught by the controller.
class ModbookController; def rescue_action(e) raise e end; end

class ModbookControllerTest < Test::Unit::TestCase
  def setup
    @controller = ModbookController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
