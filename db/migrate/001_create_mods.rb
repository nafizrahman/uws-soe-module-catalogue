class CreateMods < ActiveRecord::Migration
  def self.up
    create_table :mods do |t|
       t.column :module_code, :string
       t.column :title, :string
       t.column :module_level, :string #can be level M (0,1,2,3,M)
       t.column :credits, :integer
       t.column :lecturer, :string
       t.column :semester, :string
       t.column :pre_requisite, :string
       t.column :co_requisite, :string
       t.column :non_requisite, :string       
       t.column :module_description, :text
    end
  end

  def self.down
    drop_table :mods
  end
end
