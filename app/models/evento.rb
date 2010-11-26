class Evento < ActiveRecord::Base
  
 has_attached_file :feventos, :styles => {:thumb => "120x180#", :medium => "396x600!" },

  :url => "/fotosEvento/:id/:style.:extension",
         :path => ":rails_root/public/fotosEvento/:id/:style.:extension"
         def url(*args)
           data.url(*args)
         end

         def name
           data_file_name

         end

         def content_type
           data_content_type
         end

         def file_size
           data_file_size
         end
  
end
