class AddOption < ActiveRecord::Migration
  def self.up
  
  add_column :degree_programmes, :option_1, :string
  add_column :degree_programmes, :option_2, :string
  add_column :degree_programmes, :option_3, :string
  add_column :degree_programmes, :option_4, :string
  add_column :degree_programmes, :option_5, :string
  add_column :degree_programmes, :option_6, :string
  add_column :degree_programmes, :option_7, :string
  add_column :degree_programmes, :option_8, :string
  add_column :degree_programmes, :option_9, :string
  add_column :degree_programmes, :option_10, :string
  add_column :degree_programmes, :option_11, :string
  add_column :degree_programmes, :option_12, :string
  end

  def self.down
   remove_column :degree_programmes, :option_1
   remove_column :degree_programmes, :option_2
   remove_column :degree_programmes, :option_3
   remove_column :degree_programmes, :option_4
   remove_column :degree_programmes, :option_5
   remove_column :degree_programmes, :option_6
   remove_column :degree_programmes, :option_7
   remove_column :degree_programmes, :option_8
   remove_column :degree_programmes, :option_9
   remove_column :degree_programmes, :option_10
   remove_column :degree_programmes, :option_11
   remove_column :degree_programmes, :option_12
   
  end
end
