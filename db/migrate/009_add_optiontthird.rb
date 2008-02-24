class AddOptiontthird < ActiveRecord::Migration
  def self.up
  add_column :degree_programmes, :option_301, :string
  add_column :degree_programmes, :option_302, :string
  add_column :degree_programmes, :option_303, :string
  add_column :degree_programmes, :option_304, :string
  add_column :degree_programmes, :option_305, :string
  add_column :degree_programmes, :option_306, :string
  add_column :degree_programmes, :option_307, :string
  add_column :degree_programmes, :option_308, :string
  add_column :degree_programmes, :option_309, :string
  add_column :degree_programmes, :option_310, :string
  add_column :degree_programmes, :option_311, :string
  add_column :degree_programmes, :option_312, :string
  end

  def self.down
   remove_column :degree_programmes, :option_301
   remove_column :degree_programmes, :option_302
   remove_column :degree_programmes, :option_303
   remove_column :degree_programmes, :option_304
   remove_column :degree_programmes, :option_305
   remove_column :degree_programmes, :option_306
   remove_column :degree_programmes, :option_307
   remove_column :degree_programmes, :option_308
   remove_column :degree_programmes, :option_309
   remove_column :degree_programmes, :option_310
   remove_column :degree_programmes, :option_311
   remove_column :degree_programmes, :option_312
  end
end
