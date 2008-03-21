class Student < ActiveRecord::Base

belongs_to :dept
has_and_belongs_to_many :modules


end
