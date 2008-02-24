class AddDeptimg < ActiveRecord::Migration
  def self.up
  add_column :depts, :image_url, :string
  end

  def self.down
   remove_column :depts, :image_url
  end
end
