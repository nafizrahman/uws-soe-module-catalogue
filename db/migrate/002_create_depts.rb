class CreateDepts < ActiveRecord::Migration
  def self.up
    create_table :depts do |t|
       t.column :department_code, :string #EG
       t.column :department_name, :string #engineering
       t.column :discipline, :text #icct, electrical, civil...
       
    end
  end

  def self.down
    drop_table :depts
  end
end
