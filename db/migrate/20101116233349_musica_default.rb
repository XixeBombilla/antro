class MusicaDefault < ActiveRecord::Migration
  def self.up
    if !Musica.find_by_id(1)
        Musica.create(:titulo => "Musica 1", :created_at => Time.now, :updated_at => Time.now, :archivo_file_name => "1.mp3", 
        :archivo_content_type => "audio/mpeg", :archivo_file_size=> 4119233, :archivo_updated_at=> Time.now)
      end
      if !Musica.find_by_id(2)
         Musica.create(:titulo => "Musica 2", :created_at => Time.now, :updated_at => Time.now, :archivo_file_name => "2.mp3", 
          :archivo_content_type => "audio/mpeg", :archivo_file_size=> 4119233, :archivo_updated_at=> Time.now)
        end 
         if !Musica.find_by_id(3)
              Musica.create(:titulo => "Musica 3", :created_at => Time.now, :updated_at => Time.now, :archivo_file_name => "3.mp3", 
              :archivo_content_type => "audio/mpeg", :archivo_file_size=> 4119233, :archivo_updated_at=> Time.now)
            end 
             if !Musica.find_by_id(4)
                  Musica.create(:titulo => "Musica 4", :created_at => Time.now, :updated_at => Time.now, :archivo_file_name => "4.mp3", 
                  :archivo_content_type => "audio/mpeg", :archivo_file_size=> 4119233, :archivo_updated_at=> Time.now)
                end
                 if !Musica.find_by_id(5)
                      Musica.create(:titulo => "Musica 5", :created_at => Time.now, :updated_at => Time.now, :archivo_file_name => "5.mp3", 
                      :archivo_content_type => "audio/mpeg", :archivo_file_size=> 4119233, :archivo_updated_at=> Time.now)
                    end
                     if !Musica.find_by_id(6)
                          Musica.create(:titulo => "Musica 6", :created_at => Time.now, :updated_at => Time.now, :archivo_file_name => "6.mp3", 
                          :archivo_content_type => "audio/mpeg", :archivo_file_size=> 4119233, :archivo_updated_at=> Time.now)
                        end
                         if !Musica.find_by_id(7)
                              Musica.create(:titulo => "Musica 7", :created_at => Time.now, :updated_at => Time.now, :archivo_file_name => "7.mp3", 
                              :archivo_content_type => "audio/mpeg", :archivo_file_size=> 4119233, :archivo_updated_at=> Time.now)
                            end
                             if !Musica.find_by_id(8)
                                  Musica.create(:titulo => "Musica 8", :created_at => Time.now, :updated_at => Time.now, :archivo_file_name => "8.mp3", 
                                  :archivo_content_type => "audio/mpeg", :archivo_file_size=> 4119233, :archivo_updated_at=> Time.now)
                                end
                                 if !Musica.find_by_id(9)
                                      Musica.create(:titulo => "Musica 9 ", :created_at => Time.now, :updated_at => Time.now, :archivo_file_name => "9.mp3", 
                                      :archivo_content_type => "audio/mpeg", :archivo_file_size=> 4119233, :archivo_updated_at=> Time.now)
                                    end
                                     if !Musica.find_by_id(10)
                                          Musica.create(:titulo => "Musica 10", :created_at => Time.now, :updated_at => Time.now, :archivo_file_name => "10.mp3", 
                                          :archivo_content_type => "audio/mpeg", :archivo_file_size=> 4119233, :archivo_updated_at=> Time.now)
                                        end
    
  end

  def self.down
  end
end
