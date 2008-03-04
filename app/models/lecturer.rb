class Lecturer < ActiveRecord::Base
 validates_presence_of :lecturer_code, :title, :surname, :other_names, :address, :postcode, :department, :qualifications, :taught_modules
 validates_uniqueness_of :lecturer_code #primary key
end
