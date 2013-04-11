class Work < ActiveRecord::Base
  attr_accessible :description, :logo1, :logo2, :title, :front_show, :front_title, :delete_logo1, :delete_logo2
  
  
  
    has_attached_file :logo1, :styles => { :small => "138x138#" }

    has_attached_file :logo2, :styles => { :small => "138x138#", :big => "940x906#" }


  validates_attachment_size :logo1, :less_than => 5.megabytes
  validates_attachment_content_type :logo1, :content_type => ['image/jpeg', 'image/png']
  validates_attachment_size :logo2, :less_than => 5.megabytes
  validates_attachment_content_type :logo2, :content_type => ['image/jpeg', 'image/png']
  
  before_validation :clear_logo1
  before_validation :clear_logo2

  
  def delete_logo1=(value)
     @delete_logo1 = !value.to_i.zero?
   end

   def delete_logo1
     !!@delete_logo1
   end
   alias_method :delete_logo1?, :delete_logo1
   
   def clear_logo1
     self.logo1 = nil if delete_logo1? && !logo1.dirty?
   end
   
 def delete_logo2=(value)
    @delete_logo2 = !value.to_i.zero?
  end

  def delete_logo2
    !!@delete_logo2
  end
  alias_method :delete_logo2?, :delete_logo2

  def clear_logo2
    self.logo2 = nil if delete_logo2? && !logo2.dirty?
  end
  
  
end
