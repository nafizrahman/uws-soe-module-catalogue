class DegreeProgramme < ActiveRecord::Base

belongs_to :dept #departments
has_and_belongs_to_many :mods #modules e.g engineering modules EG-323 belongs to Eng Dept

validates_presence_of :degree_code, :title, :scheme, :department, :full_time_study, :description
validates_uniqueness_of :degree_code #primary key
end
