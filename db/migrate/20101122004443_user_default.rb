class UserDefault < ActiveRecord::Migration
  def self.up
    if !User.find_by_login("admin")
        User.create(:login => "admin", :created_at => Time.now, :updated_at => Time.now, :email=> "admin@admin.com", :name => "admininistrator",
        :password => "superadmin", :password_confirmation=> "superadmin")
      end 
      
  end

  def self.down
  end
end
