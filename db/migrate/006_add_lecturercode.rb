class AddLecturercode < ActiveRecord::Migration
  def self.up
   add_column :lecturers, :lecturer_code, :string
  end

  def self.down
  remove_column :lecturers, :lecturer_code
  end
end
