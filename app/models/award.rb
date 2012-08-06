class Award < ActiveRecord::Base
  attr_accessible :description, :logo1, :title
  
    has_attached_file :logo1, :styles => { :small => "100x100>", 
                      :url  => "/assets/clients/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/clients/:id/:style/:basename.:extension"
                                   }

  validates_attachment_size :logo1, :less_than => 5.megabytes
  validates_attachment_content_type :logo1, :content_type => ['image/jpeg', 'image/png']
end