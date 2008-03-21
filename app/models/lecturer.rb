class Lecturer < ActiveRecord::Base
 
 belongs_to :dept
 has_and_belongs_to_many :modules
 
 validates_presence_of :lecturer_code, :title, :surname, :other_names, :address, :postcode, :department, :qualifications, :taught_modules
 validates_uniqueness_of :lecturer_code #primary key
end
