class CreateDegreeProgrammes < ActiveRecord::Migration
  def self.up
    create_table :degree_programmes do |t|
       t.column :degree_code, :string
       t.column :title, :string
       t.column :scheme, :string
       t.column :department, :string
       t.column :full_time_study, :integer
       t.column :description, :text
       
    end
  end

  def self.down
    drop_table :degree_programmes
  end
end
