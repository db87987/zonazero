class Work < ActiveRecord::Base
  attr_accessible :description, :logo1, :logo2, :title
  
    has_attached_file :logo1, :styles => { :small => "138x138>", 
                      :url  => "/assets/works/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/works/:id/:style/:basename.:extension"
                                   }

    has_attached_file :logo2, :styles => { :big => "780x439>", 
                      :url  => "/assets/works/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/works/:id/:style/:basename.:extension"
                                   }


  validates_attachment_size :logo1, :less_than => 5.megabytes
  validates_attachment_content_type :logo1, :content_type => ['image/jpeg', 'image/png']
end
