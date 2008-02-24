class AddTitle < ActiveRecord::Migration
  def self.up
  add_column :lecturers, :title, :string
  end

  def self.down
  remove_column :lecturers, :title
  end
end
