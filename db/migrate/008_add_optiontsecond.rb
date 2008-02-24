class AddOptiontsecond < ActiveRecord::Migration
  def self.up
  add_column :degree_programmes, :option_201, :string
  add_column :degree_programmes, :option_202, :string
  add_column :degree_programmes, :option_203, :string
  add_column :degree_programmes, :option_204, :string
  add_column :degree_programmes, :option_205, :string
  add_column :degree_programmes, :option_206, :string
  add_column :degree_programmes, :option_207, :string
  add_column :degree_programmes, :option_208, :string
  add_column :degree_programmes, :option_209, :string
  add_column :degree_programmes, :option_210, :string
  add_column :degree_programmes, :option_211, :string
  add_column :degree_programmes, :option_212, :string
  end

  def self.down
   remove_column :degree_programmes, :option_201
   remove_column :degree_programmes, :option_202
   remove_column :degree_programmes, :option_203
   remove_column :degree_programmes, :option_204
   remove_column :degree_programmes, :option_205
   remove_column :degree_programmes, :option_206
   remove_column :degree_programmes, :option_207
   remove_column :degree_programmes, :option_208
   remove_column :degree_programmes, :option_209
   remove_column :degree_programmes, :option_210
   remove_column :degree_programmes, :option_211
   remove_column :degree_programmes, :option_212
  
  end
end
