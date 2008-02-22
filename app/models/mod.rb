class Mod < ActiveRecord::Base
 
  def self.find_mods_available
 find(:all, :order => "module_code")
 end
  
 validates_presence_of :module_code, :title, :module_level, :credits, :lecturer, :semester
 validates_numericality_of :credits
 validates_uniqueness_of :module_code #primary key

protected
 def validate
  errors.add(:credits, "should be at least 10") if credits < 10
  end
 
 end
 

