class Client < ActiveRecord::Base
  attr_accessible :title, :logo1, :logo2, :point1, :point2, :point3, :point4, :point5

  has_attached_file :logo1, :styles => { :small => "100x67>", 
                    :url  => "/assets/clients/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/clients/:id/:style/:basename.:extension"
                                 }

  has_attached_file :logo2, :styles => { :big => "156x68>", 
                    :url  => "/assets/clients/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/clients/:id/:style/:basename.:extension"
                                 }

validates_attachment_presence :logo1
validates_attachment_size :logo1, :less_than => 5.megabytes
validates_attachment_content_type :logo1, :content_type => ['image/jpeg', 'image/png']
end


