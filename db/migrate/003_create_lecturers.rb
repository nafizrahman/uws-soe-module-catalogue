class CreateLecturers < ActiveRecord::Migration
  def self.up
    create_table :lecturers do |t|
       t.column :surname, :string
       t.column :other_names, :string
       t.column :address, :string
       t.column :postcode, :string
       t.column :department, :string
       t.column :qualifications, :text
       t.column :taught_modules, :text
       
    end
  end

  def self.down
    drop_table :lecturers
  end
end
