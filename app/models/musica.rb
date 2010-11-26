class Musica < ActiveRecord::Base
  
  has_attached_file :archivo

  validates_attachment_presence :archivo
  validates_attachment_content_type :archivo, :content_type => [ 'application/mp3', 'application/x-mp3', 'audio/mpeg', 'audio/mp3' ],
                                    :message => 'el archivo debe ser .mp3'

  validates_attachment_size :archivo, :less_than => 10.megabytes    ,                                
  
  :url =>"/archivo/:id/:style.:extension",
         :path => ":rails_root/public/archivo/:id/:style.:extension"
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
