class ModbookController < ApplicationController

  def index
   @mods = Mod.find_mods_available
  end
end
