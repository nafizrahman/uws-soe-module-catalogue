class CreateStudents < ActiveRecord::Migration
  def self.up
   create_table :students do |t|
   t.column :student_code, :integer
   t.column :title,        :string
   t.column :surname,      :string
   t.column :other_names,  :string
   t.column :address,      :string
   t.column :postcode,     :string
   t.column :department,   :string
   t.column :discipline,   :string
   t.column :degree_code,  :string
   t.column :tutor,        :string  
  
  end
  end

  def self.down
   drop_table :students
  end
end
