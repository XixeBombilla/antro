class Foto < ActiveRecord::Base
  has_attached_file :imagen, :styles => {:thumb => "240x180#", :medium => "800x600!" },
   :url => "/fotos_generales/:id/:style.:extension",
          :path => ":rails_root/public/fotos_generales/:id/:style.:extension"
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
