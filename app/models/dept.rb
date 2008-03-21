class Dept < ActiveRecord::Base

has_many :degree_programmes
has_many :students
has_many :lecturers

def self.find_depts_available
 find(:all, :order => "department_name") #sort by dept name
end


 validates_format_of :image_url,
                     :with => %r{\.(gif|jpg|png)$}i,
                     :message =>"must be a URL for a GIF, JPG or PNG image"
                     
 validates_presence_of :department_code, :department_name, :discipline
 validates_uniqueness_of :department_code #primary key
end
