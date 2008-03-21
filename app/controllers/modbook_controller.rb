class ModbookController < ApplicationController

  def index
   @depts = Dept.find_depts_available
  end
end
