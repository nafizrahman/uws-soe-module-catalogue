class DegreeProgramme < ActiveRecord::Base

validates_presence_of :degree_code, :title, :scheme, :department, :full_time_study, :description
validates_uniqueness_of :degree_code #primary key
end
