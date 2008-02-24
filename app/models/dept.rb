class Dept < ActiveRecord::Base
 validates_format_of :image_url,
                     :with => %r{\.(gif|jpg|png)$}i,
                     :message =>"must be a URL for a GIF, JPG or PNG image"
                   
end
